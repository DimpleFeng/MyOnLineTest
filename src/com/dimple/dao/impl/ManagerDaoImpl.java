package com.dimple.dao.impl;

import com.dimple.dao.ManagerDao;
import com.dimple.entity.Manager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Dimple on 2018/5/25/16:26
 */
@Repository
@Transactional
public class ManagerDaoImpl implements ManagerDao {

    @Autowired
    HibernateTemplate hibernateTemplate;

    /**
     *
     * @param id
     * @param newPassword
     */
    @Override
    public void updatePassword(int id,String newPassword) {
        Manager manager = hibernateTemplate.get(Manager.class, id);
        manager.setPassword(newPassword);
        hibernateTemplate.update(manager);
    }

    @Override
    public Manager getManagerById(int id) {
       return hibernateTemplate.get(Manager.class, id);
    }


}
