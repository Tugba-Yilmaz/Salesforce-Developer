({
	HesaplaFunction : function(component, event, helper) {
		var num1=component.find('n1').get('v.value');
        var num2=component.find('n2').get('v.value');
        //js apex class baglanti kurmasi
        var servercontroller=component.get('c.Sum');
        //methoda parametre degerleri gonderme
        servercontroller.setParams({
            "numberx":num1,
            "numbery":num2
        });
        //gelen degerleri alma
        servercontroller.setCallback(this,function(response){
            console.log(response.state);
            console.log(response.returnValue);
            var gelendeger=response.returnValue;
            component.set("v.sonucname",gelendeger);
        });
        //action ver
        $A.enqueueAction(servercontroller);
	}
})