final Map<String, dynamic> sampleFormData = {
  'fields': [
    {
      'key': 'formKey1',
      'type': 'Input',
      'label': 'Full Name',
      'placeholder': 'Enter Your Full Name',
      'required': true
    },
    {
      'key': 'formKey2',
      'type': 'Input',
      'label': 'Phone Number',
      'placeholder': 'Enter Your Phone Number',
      'validator': 'digitsOnly',
      // 'value': 'Hello',
      'required': true
    },
    {
      'key': 'formKey3',
      'type': 'RadioButton',
      'label': 'Gender',
      'value': 2,
      'items': [
        {
          'label': 'Male',
          'value': 1,
        },
        {
          'label': 'Female',
          'value': 2,
        }
      ]
    },
    {
      'key': 'formKey4',
      'type': 'Switch',
      'label': 'Dark Mode',
      'value': false,
    },
    {
      'key': 'formKey5',
      'type': 'Checkbox',
      'label': 'Checkbox Test',
      'value': [],
      'items': [
        {
          'label': 'Task 1',
          'value': false,
        },
        {
          'label': 'Task 2',
          'value': false,
        },
        {
          'label': 'Task 3',
          'value': false,
        }
      ]
    },
    {
      'key': 'formKey6',
      'type': 'Select',
      'label': 'Gender Dropdown',
      'value': 'Male',
      'placeholder': 'Select Gender',
      'items': [
        {
          'label': 'Male',
          'value': 'Male',
        },
        {
          'label': 'Female',
          'value': 'Female',
        }
      ]
    },
    {
      'key': 'formKey7',
      'type': 'Date',
      'label': 'Date of Birth',
      'value': 'Select Date',
    }
  ],
};
