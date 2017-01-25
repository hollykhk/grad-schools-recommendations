function addClass() {
	var newClass = document.getElementById("classes").value;
	var classes = document.getElementById("classesTaken").value;
	classes = classes.concat(newClass);
	document.getElementById("classesTaken").value = classes + ",";
}

function degreeSelectHandler(degree) {
	var yearList = document.getElementById('YearList');
	var specializationList = document.getElementById('SpecializationOfDegree');
	removeOptions(yearList);
	removeOptions(specializationList);
	
	if (degree.value=='cs') {
		addOption("2014","2014",yearList);
		addOption("2015","2015",yearList);
		addOption("2016","2016",yearList);
		addOption("None","none",specializationList);
	}
	
	else if(degree.value == 'math') {
		addOption("2015","2015",yearList);
		addOption("None","none",specializationList);
		addOption("Applied","applied",specializationList);
		addOption("Mathematics","mathematics",specializationList);
		addOption("Statistics","statistics",specializationList);
	}
	
	else if(degree.value == 'me') {
		addOption("2015","2015",yearList);
		addOption("None","none",specializationList);
	}
	
	else if(degree.value == 'se') {
		addOption("2015","2015",yearList);
		addOption("None","none",specializationList);
		addOption("Artificial Intelligence and Cognitive Modeling","AICog",specializationList);
		addOption("Computer Imaging","compImaging",specializationList);
		addOption("Embedded Systems","embedded",specializationList);
		addOption("Information Assurance","infoAssurance",specializationList);
		addOption("Human-Computer Interaction","HumanCompInteraction",specializationList);
		addOption("Networks","networks",specializationList);
	}
	
}

function addOption(text,value,select) {
	var option = document.createElement("option");
	option.text=text;
	option.value=value;
	select.add(option);
}

function removeOptions(selectbox) {
    var i;
    for(i = selectbox.options.length - 1 ; i >= 0 ; i--)
    {
        selectbox.remove(i);
    }
}

function goBack() {
	window.history.back();
}

function fillOutExample() {
	document.getElementById("MajorList").value = "math";
	document.getElementById("SpecializationOfDegree").value = "applied";
	document.getElementById("YearList").value = "2015"
	document.getElementById("classesTaken").value =  "cs1337,phys2125,phys2126,phys2325,phys2326,chem1311,chem1111,math2417,hist1301,hist1302,math2419,govt2305,govt2306,rhet1302,cs2305,cs2336,cs3305,cs3340,math2418,ahst2331,math3310,cs3345,cs3341,cs4V98,math2451,math3311,math3323,ecs1200,ecs3390"
};
