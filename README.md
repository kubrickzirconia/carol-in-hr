# carol-in-hr

This repository details the steps taken to create an SAP Gateway OData service with code based implementation. The OData service will be able to create, read, update, and delete HR employee address data, which is stored in PA0006. Project created and presented as part of the learning and development component of my grad scheme.

#### Project Aims

* To utilise my conceptual and practical understanding of OData APIs.
* To demonstrate my knowledge of integration, as is utilised in SAP, in particular as APIs.
* To demonstrate business knowledge gained from working with HR mini master data.
* To work with ABAP on a clearly defined technical project.
* To improve my confidence with OData, of practical usage in integration as well as when working with Adobe Forms, another area of SAP development.

#### Functional Concept

[functional spec] 

[pp presentation]

## Technical Solution

[technical spec]

This repository is dedicated to detailing the steps taken to create and test the OData services, including code based method implementations. I have aimed to detail the process so throroughly that somebody else could replicate the process. 

This repository has been organised into the following subfolders:

### [segw][1]

The transaction code SEGW (SAP Gateway Service Builder) is the place where the service was built and where the data model is defined. Runtime objects are also generated here. This subfolder summarises the steps taken to create the service.

### [maint_service][2]

Activate and Maintain Services, running SAP Gateway Client.

### [methods][3]

This folder contains the redefined methods for the CRUD operations. The ABAP code is included, as well as flowcharts detailing the intended workings of the methods.

### [testing][4]

Example URIs

[1]: https://github.com/kubrickzirconia/carol-in-hr/tree/master/segw
[2]: https://github.com/kubrickzirconia/carol-in-hr/tree/master/maint_service
[3]: https://github.com/kubrickzirconia/carol-in-hr/tree/master/methods
[4]: https://github.com/kubrickzirconia/carol-in-hr/tree/master/testing
