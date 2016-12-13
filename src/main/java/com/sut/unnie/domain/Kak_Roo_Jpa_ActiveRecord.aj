// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.unnie.domain;

import com.sut.unnie.domain.Kak;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Kak_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Kak.entityManager;
    
    public static final List<String> Kak.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Kak.entityManager() {
        EntityManager em = new Kak().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Kak.countKaks() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Kak o", Long.class).getSingleResult();
    }
    
    public static List<Kak> Kak.findAllKaks() {
        return entityManager().createQuery("SELECT o FROM Kak o", Kak.class).getResultList();
    }
    
    public static List<Kak> Kak.findAllKaks(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Kak o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Kak.class).getResultList();
    }
    
    public static Kak Kak.findKak(Long id) {
        if (id == null) return null;
        return entityManager().find(Kak.class, id);
    }
    
    public static List<Kak> Kak.findKakEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Kak o", Kak.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Kak> Kak.findKakEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Kak o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Kak.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Kak.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Kak.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Kak attached = Kak.findKak(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Kak.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Kak.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Kak Kak.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Kak merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
