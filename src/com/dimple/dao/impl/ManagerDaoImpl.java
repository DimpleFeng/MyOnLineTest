package com.dimple.dao.impl;

import com.dimple.dao.ManagerDao;
import com.dimple.entity.Manager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

/**
 * Created by Dimple on 2018/5/25/16:26
 */
@Repository
public class ManagerDaoImpl implements ManagerDao {

    @Autowired
    HibernateTemplate hibernateTemplate;
    /**
     * 修改管理员账户密码
     * @param manager
     */
    @Override
    public void updatePassword(Manager manager) {


    }
}
