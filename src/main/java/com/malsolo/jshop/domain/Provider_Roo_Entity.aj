// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.domain;

import com.malsolo.jshop.domain.Provider;
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

privileged aspect Provider_Roo_Entity {
    
    declare @type: Provider: @Entity;
    
    @PersistenceContext
    transient EntityManager Provider.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Provider.id;
    
    @Version
    @Column(name = "version")
    private Integer Provider.version;
    
    public Long Provider.getId() {
        return this.id;
    }
    
    public void Provider.setId(Long id) {
        this.id = id;
    }
    
    public Integer Provider.getVersion() {
        return this.version;
    }
    
    public void Provider.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Provider.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Provider.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Provider attached = Provider.findProvider(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Provider.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Provider.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Provider Provider.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Provider merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Provider.entityManager() {
        EntityManager em = new Provider().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Provider.countProviders() {
        return entityManager().createQuery("select count(o) from Provider o", Long.class).getSingleResult();
    }
    
    public static List<Provider> Provider.findAllProviders() {
        return entityManager().createQuery("select o from Provider o", Provider.class).getResultList();
    }
    
    public static Provider Provider.findProvider(Long id) {
        if (id == null) return null;
        return entityManager().find(Provider.class, id);
    }
    
    public static List<Provider> Provider.findProviderEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Provider o", Provider.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
