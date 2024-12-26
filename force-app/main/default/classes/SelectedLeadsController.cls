public class SelectedLeadsController{
    public List<Lead> selectedLeads {get; set;}

    public SelectedLeadsController() {
        String query = 'SELECT Name, LeadSource, ... FROM Lead WHERE Id IN :selectedIds';
        selectedLeads = Database.query(query);
    }
}