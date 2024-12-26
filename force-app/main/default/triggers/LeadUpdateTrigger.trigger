trigger LeadUpdateTrigger on Lead (after update) {
      public static void updateLeadPhone(Map<Id, Lead> newLeadMap, Map<Id, Lead> oldLeadMap) {
        List<Lead> leadsToUpdate = new List<Lead>();
        
        for (Id leadId : newLeadMap.keySet()) {
            Lead newLead = newLeadMap.get(leadId);
            Lead oldLead = oldLeadMap.get(leadId);
            
            // Kontrol etmek istediğiniz özel koşulları buraya ekleyebilirsiniz
            // Örneğin, bir butona tıklanmış mı kontrolü
            
            // Telefon numarasını değiştirme örneği
            if (newLead.Phone != '11111111' && oldLead.Phone != '11111111') {
                newLead.Phone = '11111111';
                leadsToUpdate.add(newLead);
            }
        }
        
        if (!leadsToUpdate.isEmpty()) {
            update leadsToUpdate;
        }
    }

}