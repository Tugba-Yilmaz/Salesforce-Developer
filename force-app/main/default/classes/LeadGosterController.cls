public class LeadGosterController {

    public List<Lead> selectedLeads { get; set; }
    public List<Lead> leads { get; set; } // Added for storing retrieved leads

    public LeadGosterController() {
        selectedLeads = new List<Lead>();
    }

    public PageReference goster() {
        // Seçilen leadlerin ID'lerini al
        List<String> leadIds = new List<String>();
        for (Lead lead : selectedLeads) {
            leadIds.add(lead.Id);
        }

        // Leadleri sorgula
        leads = [SELECT Id, Name, Company, Status FROM Lead WHERE Id IN :leadIds];

        // Visualforce sayfasını direkt aç
        return Page.LeadGosterVF;
    }

    public void gosterVisualforce() {
        // Kodlarda değişiklik yok
    }
}