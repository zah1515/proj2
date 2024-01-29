using MyServic as service from '../../srv/service';

annotate service.student with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'studentId',
            Value : studentId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'studentName',
            Value : studentName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Email',
            Value : Email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'birthDate',
            Value : birthDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'phoneNo',
            Value : phoneNo,
        },
    ]
);
annotate service.student with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'studentId',
                Value : studentId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'studentName',
                Value : studentName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : Email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'birthDate',
                Value : birthDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phoneNo',
                Value : phoneNo,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Enrolment',
            ID : 'Enrolment',
            Target : 'studToEnrol/@UI.LineItem#Enrolment',
        },
    ]
);
annotate service.enrollment with @(
    UI.LineItem #Enrolment : [
        {
            $Type : 'UI.DataField',
            Value : cancellationReason,
            Label : 'cancellationReason',
        },{
            $Type : 'UI.DataField',
            Value : cancelled,
            Label : 'cancelled',
        },{
            $Type : 'UI.DataField',
            Value : courseId,
            Label : 'courseId',
        },{
            $Type : 'UI.DataField',
            Value : enrolDate,
            Label : 'enrolDate',
        },{
            $Type : 'UI.DataField',
            Value : cycleId,
            Label : 'cycleId',
        },{
            $Type : 'UI.DataField',
            Value : studentId,
            Label : 'studentId',
        },]
);
annotate service.enrollment with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Enrollement',
            ID : 'Enrollement',
            Target : '@UI.FieldGroup#Enrollement',
        },
    ],
    UI.FieldGroup #Enrollement : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cancellationReason,
                Label : 'cancellationReason',
            },{
                $Type : 'UI.DataField',
                Value : cancelled,
                Label : 'cancelled',
            },{
                $Type : 'UI.DataField',
                Value : courseId,
                Label : 'courseId',
            },{
                $Type : 'UI.DataField',
                Value : cycleId,
                Label : 'cycleId',
            },{
                $Type : 'UI.DataField',
                Value : enrolDate,
                Label : 'enrolDate',
            },{
                $Type : 'UI.DataField',
                Value : studentId,
                Label : 'studentId',
            },],
    }
);
annotate service.student with @(
    UI.HeaderInfo : {
        TypeImageUrl : 'sap-icon://biometric-thumb',
        TypeName : '',
        TypeNamePlural : ''
    }
);
