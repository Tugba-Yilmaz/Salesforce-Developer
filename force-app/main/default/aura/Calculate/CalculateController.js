({
    Deneme : function(component, event, helper) {
        console.log('merhaba');
    },
    Toplama : function(component, event, helper) {
        var n1=component.get("v.num1");
        var n2=component.get("v.num2");
        component.set("v.result",n1+n2);
    }
})