public class EmergencyContactLimitHelper {
	 public static void enforceEmergencyContactLimit(List<Emergency_Contact__c> newEmergencyContacts) {
        Map<Id, Integer> contactEmergencyContactCount = new Map<Id, Integer>();

        for (Emergency_Contact__c ec : newEmergencyContacts) {
            Id contactId = ec.Contact__c;

            if (!contactEmergencyContactCount.containsKey(contactId)) {
                contactEmergencyContactCount.put(contactId, 1);
            } else {
                Integer count = contactEmergencyContactCount.get(contactId);
                count++;
                
                if (count > 3) {
                    ec.addError('Maximum limit of 3 emergency contacts reached for this contact.');
                } else {
                    contactEmergencyContactCount.put(contactId, count);
                }
            }
        }
    }
}