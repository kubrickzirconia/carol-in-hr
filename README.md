# carol-in-hr

[Functional Specification][1]

Technical Specification

[ABAP Service Implementations][3]

[Repository Wiki][2]


This repository details the steps taken to create an SAP Gateway OData service with code based implementation. The OData service will be able to create, read, update, and delete HR employee address data, which is stored in PA0006. Project created and presented as part of the learning and development component of my grad scheme.

#### Project Aims

* To utilise my conceptual and practical understanding of OData APIs.
* To demonstrate business knowledge gained from working with HR mini master data.
* To work with ABAP on a clearly defined technical project.

#### Functional Concept

The OData service will allow the address data stored for an employee to be read and changed from outside SAP. Address data is stored in database table PA0006, so this is the table that the OData service needs to access.

For this particular functional specification, only Permanent employee addresses are stored in PA0006, so subtypes do not need to be utilised.

The OData service should be capable of the following operations, as service implementations:

1.	Get address details for a given employee number
2.	Modify the address details for a given employee number

As such, the OData service must have functionality to allow a filter by employee number. 


#### Technical Solution

This repository is dedicated to detailing the steps taken to create and test the OData service, including code based method implementations. I have aimed to detail the process so throroughly that somebody else could replicate the process. The steps taken to create this OData service, and the tests I undertook on the service to ensure it worked as expected, can be found in this repository's [wiki][2].

The [methods][3] folder contains the redefined methods for the CRUD operations. The ABAP code is included, as well as flowcharts detailing the intended workings of the methods.

[1]: https://github.com/kubrickzirconia/carol-in-hr/blob/master/Functional%20Specification.pdf
[2]: https://github.com/kubrickzirconia/carol-in-hr/wiki
[3]: https://github.com/kubrickzirconia/carol-in-hr/tree/master/methods
