<?php
global $_W, $_GPC;
include 'common.php';
load()->func('tpl');
$base=$this->get_base(); 
$title=$base['title'];
//查询缓存是否存在，如果有，就直接登录后台，如果没有就显示登录页
$webtoken = $_SESSION['webtoken']; //cache_load('webtoken');
if($webtoken==''){
	header('Location: '.$_W['siteroot'].'web/index.php?c=user&a=login&referer='.urlencode($_W['siteroot'].'app/'.$this->createMobileUrl('manage_login_go')));
}else{
	//通过缓存查找到管理员信息
	$manageid = $_SESSION['manageid']; //cache_load('manageid');
	
	$manage=pdo_fetch("SELECT * FROM ".tablename('bc_community_jurisdiction')." WHERE weid=:uniacid AND id=:id",array(':uniacid'=>$_W['uniacid'],'id'=>$manageid));
	$townid = $manage['townid'];



	$nav=intval($_GPC['nav']);
	if($nav==0){
		$nav=1;
	}
	

if ($_W['ispost']) {
	if (checksubmit('submit')) {
		
		$newdata = array(
			'weid'=>$_W['uniacid'],
			'pid'=>$_GPC['pid'],
			'title'=>$_GPC['title'],
			'cover'=>$_GPC['cover'],
			'paixu'=>$_GPC['paixu'],	
			'status'=>$_GPC['status'],				
			'ctime'=>time(),
            'town_id'=>$townid,
			 );
		$res = pdo_insert('bc_community_coursetype', $newdata);
		
		if (!empty($res)) {
			message('提交成功', $this -> createMobileUrl('manage_technology',array('nav'=>3)), 'success');
		} else {
			message('提交失败！', $this -> createMobileUrl('manage_technology',array('nav'=>3)), 'error');
		}

	}

}


	//获取种养技术分类列表
	$type=pdo_fetchall("SELECT * FROM ".tablename('bc_community_coursetype')." WHERE weid=:uniacid  AND pid=0 AND town_id=$townid ORDER BY paixu ASC, id DESC",array(':uniacid'=>$_W['uniacid']));
	

	
	include $this->template('manage_technology');
}





?>