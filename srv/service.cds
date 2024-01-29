using proj2 as pr2 from '../db/service';

service MyServic{
    // @odata.draft.enabled

    entity student as projection on pr2.student;
    entity course as projection on pr2.course;
    entity courseByCycle as projection on pr2.courseByCycle;
    entity enrollment as projection on pr2.enrollment;
    
}