# Methods

This project involved redefining each inherited Service Implementation method to tailor them to the specifically intended functionality of the service.

## Create

## Delete

## GetEntity 

- [ABAP Code][1]
- [Flowchart][2]

This method is used to retrieve one entry from the database: the current address for a given employee. 

## GetEntitySet

- [ABAP Code][3]
- [Flowchart][4]

This method is used to retrieve multiple entries from the database. The user must use the correct field names for the field they wish to query, as the filter string is used directly in the ABAP code. This adds additional functionality, allowing the user to filter by fields other than employee number, and to filter with relational operators other than equal to. 

The filter string for GetEntitySet by employee number is as follows:

```
$filter=pernr eq '00001312'
```

## Update


[1]: https://github.com/kubrickzirconia/carol-in-hr/blob/master/methods/PA0006SET_GET_ENTITY.abap
[2]: https://github.com/kubrickzirconia/carol-in-hr/blob/master/methods/GetEntity%20Flowchart.pdf
[3]: https://github.com/kubrickzirconia/carol-in-hr/blob/master/methods/PA0006SET_GET_ENTITYSET.abap
[4]: https://github.com/kubrickzirconia/carol-in-hr/blob/master/methods/GetEntitySet%20Flowchart.pdf
