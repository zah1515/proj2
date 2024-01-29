namespace proj2;

entity student{
    key studentId : String;
    studentName : String;
    Email : String;
    birthDate : String;
    phoneNo : String;
    studToEnrol : Composition of many enrollment on studToEnrol.enrolToStud = $self;
}

entity course{
    key courseId : String;
    courseDesc : String;
    Abstract : String;
    bibliography : String;
    courseToCycle : Composition of many courseByCycle on courseToCycle.cycleToCourse = $self;
}

entity courseByCycle{
    key courseId : String;
    key cycleId : String;
    courseStartDate : String;
    courseEndDate : String;
    cycleToCourse : Association to one course on cycleToCourse.courseId = courseId;
    cycleToEnrol : Composition of many enrollment on cycleToEnrol.enrolToCycle = $self;
}

entity enrollment{
    key courseId : String;
    key cycleId : String;
    key studentId : String;
    enrolDate : String;
    cancelled : String;
    cancellationReason : String;
    enrolToStud : Association to one  student on enrolToStud.studentId = studentId;
    enrolToCycle : Association to one courseByCycle on enrolToCycle.cycleId = cycleId;
}

