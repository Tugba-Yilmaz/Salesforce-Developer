{!REQUIRESCRIPT("/soap/ajax/30.0/connection.js")}
{!REQUIRESCRIPT("/soap/ajax/30.0/apex.js")}

function updateLead() {
    var leadId = "{!Lead.Id}"; // Aktif Lead kaydının ID'si
    var result = sforce.apex.execute("LeadUpdateController", "updateLeadPhone", { leadId: leadId });
    // Sonucu işleyebilir veya bir bildirim gösterebilirsiniz
   // alert("Lead güncellendi!");
}