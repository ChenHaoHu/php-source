<?php
global $_GPC, $_W;
$GLOBALS['frames'] = $this->getMainMenu();
$info=pdo_get('byjs_sun_goodsbanner',array('uniacid' => $_W['uniacid']));
if($info['lb_imgs']){
    if(strpos($info['lb_imgs'],',')){
        $lb_imgs= explode(',',$info['lb_imgs']);

    }else{
        $lb_imgs=array(
            0=>$info['lb_imgs']
        );
    }
}

if(checksubmit('submit')){
    $data['bname']=$_GPC['bname'];
    $data['uniacid'] = $_W['uniacid'];
    if($_GPC['lb_imgs']){

        $data['lb_imgs']=implode(",",$_GPC['lb_imgs']);
    }else{
        $data['lb_imgs']='';
    }


    if($_GPC['id']==''){
        $res=pdo_insert('byjs_sun_goodsbanner',$data);
        if($res){
            message('添加成功',$this->createWebUrl('goodsbanner',array()),'success');
        }else{
            message('添加失败','','error');
        }
    }else{

        $res = pdo_update('byjs_sun_goodsbanner', $data, array('id' => $_GPC['id'],'uniacid'=>$_W['uniacid']));
        if($res){
            message('编辑成功',$this->createWebUrl('goodsbanner',array()),'success');
        }else{
            message('编辑失败','','error');
        }
    }
}
include $this->template('web/goodsbanner');