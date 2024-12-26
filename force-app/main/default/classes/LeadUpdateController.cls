public class LeadUpdateController {
    @AuraEnabled
    public static void updateLeadPhone(String leadId) {
        Lead updatedLead = [SELECT Id, Phone FROM Lead WHERE Id = :leadId LIMIT 1];
        
        // Telefon numarasını değiştirme örneği
        updatedLead.Phone = 'YENI_TELEFON_NUMARASI';
        
        update updatedLead;
    }
}