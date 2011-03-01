// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.domain;

import com.malsolo.jshop.domain.Provider;
import java.util.List;
import java.util.Random;
import org.springframework.stereotype.Component;

privileged aspect ProviderDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ProviderDataOnDemand: @Component;
    
    private Random ProviderDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<Provider> ProviderDataOnDemand.data;
    
    public Provider ProviderDataOnDemand.getNewTransientProvider(int index) {
        com.malsolo.jshop.domain.Provider obj = new com.malsolo.jshop.domain.Provider();
        java.lang.String name = "name_" + index;
        if (name.length() > 50) {
            name  = name.substring(0, 50);
        }
        obj.setName(name);
        java.lang.String description = "description_" + index;
        if (description.length() > 250) {
            description  = description.substring(0, 250);
        }
        obj.setDescription(description);
        return obj;
    }
    
    public Provider ProviderDataOnDemand.getSpecificProvider(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Provider obj = data.get(index);
        return Provider.findProvider(obj.getId());
    }
    
    public Provider ProviderDataOnDemand.getRandomProvider() {
        init();
        Provider obj = data.get(rnd.nextInt(data.size()));
        return Provider.findProvider(obj.getId());
    }
    
    public boolean ProviderDataOnDemand.modifyProvider(Provider obj) {
        return false;
    }
    
    public void ProviderDataOnDemand.init() {
        data = com.malsolo.jshop.domain.Provider.findProviderEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Provider' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<com.malsolo.jshop.domain.Provider>();
        for (int i = 0; i < 10; i++) {
            com.malsolo.jshop.domain.Provider obj = getNewTransientProvider(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}