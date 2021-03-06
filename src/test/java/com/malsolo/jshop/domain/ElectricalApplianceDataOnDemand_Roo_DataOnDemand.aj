// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.domain;

import com.malsolo.jshop.domain.BrandDataOnDemand;
import com.malsolo.jshop.domain.ElectricalAppliance;
import com.malsolo.jshop.domain.KindDataOnDemand;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ElectricalApplianceDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ElectricalApplianceDataOnDemand: @Component;
    
    private Random ElectricalApplianceDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<ElectricalAppliance> ElectricalApplianceDataOnDemand.data;
    
    @Autowired
    private KindDataOnDemand ElectricalApplianceDataOnDemand.kindDataOnDemand;
    
    @Autowired
    private BrandDataOnDemand ElectricalApplianceDataOnDemand.brandDataOnDemand;
    
    public ElectricalAppliance ElectricalApplianceDataOnDemand.getNewTransientElectricalAppliance(int index) {
        com.malsolo.jshop.domain.ElectricalAppliance obj = new com.malsolo.jshop.domain.ElectricalAppliance();
        java.lang.String description = "description_" + index;
        if (description.length() > 250) {
            description  = description.substring(0, 250);
        }
        obj.setDescription(description);
        java.lang.String model = "model_" + index;
        if (model.length() > 150) {
            model  = model.substring(0, 150);
        }
        obj.setModel(model);
        obj.setEarnings(new Integer(index).floatValue());
        obj.setKind(kindDataOnDemand.getRandomKind());
        obj.setBrand(brandDataOnDemand.getRandomBrand());
        return obj;
    }
    
    public ElectricalAppliance ElectricalApplianceDataOnDemand.getSpecificElectricalAppliance(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        ElectricalAppliance obj = data.get(index);
        return ElectricalAppliance.findElectricalAppliance(obj.getId());
    }
    
    public ElectricalAppliance ElectricalApplianceDataOnDemand.getRandomElectricalAppliance() {
        init();
        ElectricalAppliance obj = data.get(rnd.nextInt(data.size()));
        return ElectricalAppliance.findElectricalAppliance(obj.getId());
    }
    
    public boolean ElectricalApplianceDataOnDemand.modifyElectricalAppliance(ElectricalAppliance obj) {
        return false;
    }
    
    public void ElectricalApplianceDataOnDemand.init() {
        data = com.malsolo.jshop.domain.ElectricalAppliance.findElectricalApplianceEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'ElectricalAppliance' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<com.malsolo.jshop.domain.ElectricalAppliance>();
        for (int i = 0; i < 10; i++) {
            com.malsolo.jshop.domain.ElectricalAppliance obj = getNewTransientElectricalAppliance(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}
