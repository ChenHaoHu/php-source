<?php
global $_GPC, $_W;
$GLOBALS['frames'] = $this->getMainMenu();
$info=pdo_get('yzmdwsc_sun_memberconf',array('id'=>$_GPC['id']));
if(checksubmit('submit')){
    $data['uniacid']=$_W['uniacid'];
    $data['title']=$_GPC['title'];
    $data['discount']=$_GPC['discount'];
    $data['money']=$_GPC['money'];
    $data['add_time']= time();  
    if(empty($_GPC['id'])){
        $res = pdo_insert('yzmdwsc_sun_memberconf', $data);
        if($res){
            message('添加成功',$this->createWebUrl('memberconf',array()),'success');
        }else{
            message('添加失败','','error');
        }
    }else{
        $res = pdo_update('yzmdwsc_sun_memberconf', $data, array('id' => $_GPC['id']));
        if($res){
            message('编辑成功',$this->createWebUrl('memberconf',array()),'success');
        }else{
            message('编辑失败','','error');
        }  
    }  
    
}
include $this->template('web/addmemberconf');