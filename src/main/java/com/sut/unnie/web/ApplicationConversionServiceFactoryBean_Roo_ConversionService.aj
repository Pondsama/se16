// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.unnie.web;

import com.sut.unnie.domain.Salt;
import com.sut.unnie.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Salt, String> ApplicationConversionServiceFactoryBean.getSaltToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.sut.unnie.domain.Salt, java.lang.String>() {
            public String convert(Salt salt) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Salt> ApplicationConversionServiceFactoryBean.getIdToSaltConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.sut.unnie.domain.Salt>() {
            public com.sut.unnie.domain.Salt convert(java.lang.Long id) {
                return Salt.findSalt(id);
            }
        };
    }
    
    public Converter<String, Salt> ApplicationConversionServiceFactoryBean.getStringToSaltConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.sut.unnie.domain.Salt>() {
            public com.sut.unnie.domain.Salt convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Salt.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getSaltToStringConverter());
        registry.addConverter(getIdToSaltConverter());
        registry.addConverter(getStringToSaltConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
