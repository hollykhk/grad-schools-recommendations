// Javascript for Grad Prog Suggestor
var university = document.getElementById('university');
var toefls_container = document.getElementById('toefls');
var toefls_checkbox = document.getElementById('intl');
var toefl_speaking = document.getElementById('toeflss');
var toefl_reading = document.getElementById('toeflrs');
var toefl_writing = document.getElementById('toeflws');
var toefl_listening = document.getElementById('toeflls');
var gre_verbal_reasoning = document.getElementById('grevs');
var gre_quantitative_reasoning = document.getElementById('greqs');
var gre_analytical = document.getElementById('greas');
var work_experience = document.getElementById('work');
var cost_expensive = document.getElementById('expensive');
var cost_cheaper = document.getElementById('cheaper');
var cost_cheapest = document.getElementById('cheapest');
var fall_semester = document.getElementById('fall');
var spring_semester = document.getElementById('spring');
var summer_semester = document.getElementById('summer');
var ai_subject = document.getElementById('ai');
var ds_subject = document.getElementById('ds');
var dm_subject = document.getElementById('dm');


// University
var university_selected = university.value;

// Toggle TOEFL
toefls_container.style.visibility="hidden";
function showIntl() {
  if (toefls_checkbox.checked) {
    toefls_container.style.visibility="visible";
  }
  else {
    toefls_container.style.visibility="hidden";

  }
}

// TOEFL response
var toefls_score = toefl_speaking.value;
var toeflr_score = toefl_reading.value;
var toeflw_score = toefl_writing.value;
var toefll_score = toefl_listening.value;

// GRE response
var grev_score = gre_verbal_reasoning.value;
var greq_score = gre_quantitative_reasoning.value;
var grea_score = gre_analytical.value;

// Work experience
function fixCheckBox() { // fixes the checkbox return value bug
var experience;
  if (work_experience.checked) {
    return experience = 'yes';
  }
  else {
    return experience = 'no';
  }
}

// Cost
function costSelected() {
  var cost = ' ';
  if (cost_expensive.checked) {
    return cost = 'high';
  }
  else if (cost_cheaper.checked) {
    return cost = 'medium';
  }
  else if (cost_cheapest.checked) {
    return cost = 'low';
  }
}

// Semester
function semesterSelected() {
  var cost = ' ';
  if (fall_semester.checked) {
    return cost = 'fall';
  }
  else if (spring_semester.checked) {
    return cost = 'spring';
  }
  else if (summer_semester.checked) {
    return cost = 'summer';
  }
}

// Subject
function subjectSelected() {
  var subject = [];
  var simple_check = 0;
  if (ai_subject.checked) {
    simple_check = 1;
    subject.push('ai');
  }
  else {
    subject.push('none');
  }
  if (ds_subject.checked) {
    simple_check = 1;
    subject.push('ds');
  }
  else {
    subject.push('none');
  }
  if (dm_subject.checked) {
    simple_check = 1;
    subject.push('dm');
  }
  else {
    subject.push('none');
  }
  if (simple_check == 0) {
    subject.push('none');
  }
  return subject;
}


// Generate CSV
function generateCSV() {
  var experience = fixCheckBox();
  var cost = costSelected();
  var semester = semesterSelected();
  var subject = subjectSelected();

  var A = [];

  A.push(['dummy','dummy','dummy','dummy'].join(','));
  A.push(['university',university_selected,'none','none'].join(','));
  A.push(['toefls',toefls_score,'none','none'].join(','));
  A.push(['toeflr',toeflr_score,'none','none'].join(','));
  A.push(['toeflw',toeflw_score,'none','none'].join(','));
  A.push(['toefll',toefll_score,'none','none'].join(','));
  A.push(['grev',grev_score,'none','none'].join(','));
  A.push(['greq',greq_score,'none','none'].join(','));
  A.push(['grea',grea_score,'none','none'].join(','));
  A.push(['work',experience,'none','none'].join(','));
  A.push(['cost',cost,'none','none'].join(','));
  A.push(['semester',semester,'none','none'].join(','));
  A.push(['subject',subject].join(','));


  // Automatically download generated CSV file
  var csvString = A.join("%0A");
  var a         = document.createElement('a');
  a.href        = 'data:attachment/csv,' + csvString;
  a.target      = '_blank';
  a.download    = 'my_file.csv';

  document.body.appendChild(a);
  a.click();

  // Consider changing default download path
}

// Confirm exit
window.onbeforeunload = confirmExit;
    function confirmExit() {
        return "You have attempted to leave this page. Are you sure?";
    }
