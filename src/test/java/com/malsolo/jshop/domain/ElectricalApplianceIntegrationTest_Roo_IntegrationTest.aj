// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.jshop.domain;

import com.malsolo.jshop.domain.ElectricalApplianceDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ElectricalApplianceIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ElectricalApplianceIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ElectricalApplianceIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: ElectricalApplianceIntegrationTest: @Transactional;
    
    @Autowired
    private ElectricalApplianceDataOnDemand ElectricalApplianceIntegrationTest.dod;
    
    @Test
    public void ElectricalApplianceIntegrationTest.testCountElectricalAppliances() {
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to initialize correctly", dod.getRandomElectricalAppliance());
        long count = com.malsolo.jshop.domain.ElectricalAppliance.countElectricalAppliances();
        org.junit.Assert.assertTrue("Counter for 'ElectricalAppliance' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ElectricalApplianceIntegrationTest.testFindElectricalAppliance() {
        com.malsolo.jshop.domain.ElectricalAppliance obj = dod.getRandomElectricalAppliance();
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to provide an identifier", id);
        obj = com.malsolo.jshop.domain.ElectricalAppliance.findElectricalAppliance(id);
        org.junit.Assert.assertNotNull("Find method for 'ElectricalAppliance' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'ElectricalAppliance' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ElectricalApplianceIntegrationTest.testFindAllElectricalAppliances() {
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to initialize correctly", dod.getRandomElectricalAppliance());
        long count = com.malsolo.jshop.domain.ElectricalAppliance.countElectricalAppliances();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'ElectricalAppliance', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<com.malsolo.jshop.domain.ElectricalAppliance> result = com.malsolo.jshop.domain.ElectricalAppliance.findAllElectricalAppliances();
        org.junit.Assert.assertNotNull("Find all method for 'ElectricalAppliance' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'ElectricalAppliance' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ElectricalApplianceIntegrationTest.testFindElectricalApplianceEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to initialize correctly", dod.getRandomElectricalAppliance());
        long count = com.malsolo.jshop.domain.ElectricalAppliance.countElectricalAppliances();
        if (count > 20) count = 20;
        java.util.List<com.malsolo.jshop.domain.ElectricalAppliance> result = com.malsolo.jshop.domain.ElectricalAppliance.findElectricalApplianceEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'ElectricalAppliance' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'ElectricalAppliance' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ElectricalApplianceIntegrationTest.testFlush() {
        com.malsolo.jshop.domain.ElectricalAppliance obj = dod.getRandomElectricalAppliance();
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to provide an identifier", id);
        obj = com.malsolo.jshop.domain.ElectricalAppliance.findElectricalAppliance(id);
        org.junit.Assert.assertNotNull("Find method for 'ElectricalAppliance' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyElectricalAppliance(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'ElectricalAppliance' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ElectricalApplianceIntegrationTest.testMerge() {
        com.malsolo.jshop.domain.ElectricalAppliance obj = dod.getRandomElectricalAppliance();
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to provide an identifier", id);
        obj = com.malsolo.jshop.domain.ElectricalAppliance.findElectricalAppliance(id);
        boolean modified =  dod.modifyElectricalAppliance(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        com.malsolo.jshop.domain.ElectricalAppliance merged = (com.malsolo.jshop.domain.ElectricalAppliance) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'ElectricalAppliance' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ElectricalApplianceIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to initialize correctly", dod.getRandomElectricalAppliance());
        com.malsolo.jshop.domain.ElectricalAppliance obj = dod.getNewTransientElectricalAppliance(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'ElectricalAppliance' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'ElectricalAppliance' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ElectricalApplianceIntegrationTest.testRemove() {
        com.malsolo.jshop.domain.ElectricalAppliance obj = dod.getRandomElectricalAppliance();
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ElectricalAppliance' failed to provide an identifier", id);
        obj = com.malsolo.jshop.domain.ElectricalAppliance.findElectricalAppliance(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'ElectricalAppliance' with identifier '" + id + "'", com.malsolo.jshop.domain.ElectricalAppliance.findElectricalAppliance(id));
    }
    
}
