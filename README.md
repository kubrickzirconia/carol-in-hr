# carol-in-hr

This repository details the steps taken to create an SAP Gateway OData service with code based implementation. The OData service will be able to create, read, update, and delete HR employee address data, which is stored in PA0006. Project created and presented as part of the learning and development component of my grad scheme.

#### Project Aims

* To utilise my conceptual and practical understanding of OData APIs.
* To demonstrate my knowledge of integration, as is utilised in SAP, in particular as APIs.
* To demonstrate business knowledge gained from working with HR mini master data.
* To work with ABAP on a clearly defined technical project.
* To improve my confidence with OData, of practical usage in integration as well as when working with Adobe Forms, another area of SAP development.

#### Functional Concept

HR master data is often stored in a single purpose, external system. The HR data, however, must also be present in the SAP system, because many auxiliary SAP processes rely on it. As such, most SAP implementations use some sort of integration solution to pull their HR data into SAP.

Within SAP, HR data is organised into separate infotypes linked by employee number. Address data is stored in infotype 0006. This presents an opportunity to handle each component of employee data separately. I have chosen to create an API specifically to handle address data for HR as I believe this would be functionally useful. Compared to other employee data, address data changes by far the most often (tenancies can be as short as 6 months, and most are a year or less), often whilst keeping all other HR data the same.

[functional spec] 

[technical spec]

[pp presentation]

This repository has been organised into the following subfolders:

## [segw][1]

The transaction code SEGW is the place where service is built in the SAP Gateway Service Builder, and where the data model is defined.

* Creating the service
* Defining the Data Model

## [maint_service][2]

Activate and Maintain Services, running SAP Gateway Client.

## [methods][3]

This folder contains:

* Pseudocode plans for each method
* ABAP code implementation for each method


## [testing][4]

Example URIs

[1]: https://github.com/kubrickzirconia/carol-in-hr/tree/master/segw
[2]: https://github.com/kubrickzirconia/carol-in-hr/tree/master/maint_service
[3]: https://github.com/kubrickzirconia/carol-in-hr/tree/master/methods
[4]: https://github.com/kubrickzirconia/carol-in-hr/tree/master/testing
