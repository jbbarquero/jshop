// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.domain;

import com.malsolo.jshop.domain.ElectricalAppliance;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ElectricalAppliance_Roo_Entity {
    
    declare @type: ElectricalAppliance: @Entity;
    
    @PersistenceContext
    transient EntityManager ElectricalAppliance.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long ElectricalAppliance.id;
    
    @Version
    @Column(name = "version")
    private Integer ElectricalAppliance.version;
    
    public Long ElectricalAppliance.getId() {
        return this.id;
    }
    
    public void ElectricalAppliance.setId(Long id) {
        this.id = id;
    }
    
    public Integer ElectricalAppliance.getVersion() {
        return this.version;
    }
    
    public void ElectricalAppliance.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void ElectricalAppliance.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ElectricalAppliance.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ElectricalAppliance attached = ElectricalAppliance.findElectricalAppliance(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ElectricalAppliance.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ElectricalAppliance.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ElectricalAppliance ElectricalAppliance.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ElectricalAppliance merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager ElectricalAppliance.entityManager() {
        EntityManager em = new ElectricalAppliance().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ElectricalAppliance.countElectricalAppliances() {
        return entityManager().createQuery("select count(o) from ElectricalAppliance o", Long.class).getSingleResult();
    }
    
    public static List<ElectricalAppliance> ElectricalAppliance.findAllElectricalAppliances() {
        return entityManager().createQuery("select o from ElectricalAppliance o", ElectricalAppliance.class).getResultList();
    }
    
    public static ElectricalAppliance ElectricalAppliance.findElectricalAppliance(Long id) {
        if (id == null) return null;
        return entityManager().find(ElectricalAppliance.class, id);
    }
    
    public static List<ElectricalAppliance> ElectricalAppliance.findElectricalApplianceEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from ElectricalAppliance o", ElectricalAppliance.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
