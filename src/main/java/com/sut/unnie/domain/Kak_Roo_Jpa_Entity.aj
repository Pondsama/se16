// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.unnie.domain;

import com.sut.unnie.domain.Kak;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Kak_Roo_Jpa_Entity {
    
    declare @type: Kak: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Kak.id;
    
    @Version
    @Column(name = "version")
    private Integer Kak.version;
    
    public Long Kak.getId() {
        return this.id;
    }
    
    public void Kak.setId(Long id) {
        this.id = id;
    }
    
    public Integer Kak.getVersion() {
        return this.version;
    }
    
    public void Kak.setVersion(Integer version) {
        this.version = version;
    }
    
}
