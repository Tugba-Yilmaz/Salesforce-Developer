declare module "@salesforce/apex/uiapplicationHandler.createAddRecord" {
  export default function createAddRecord(param: {singleAd: any}): Promise<any>;
}
declare module "@salesforce/apex/uiapplicationHandler.createLeadRecord" {
  export default function createLeadRecord(param: {singleLead: any}): Promise<any>;
}
declare module "@salesforce/apex/uiapplicationHandler.campaignMemberRecord" {
  export default function campaignMemberRecord(param: {singleLead: any, singleAd: any}): Promise<any>;
}
