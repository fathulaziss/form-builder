final Map<String, dynamic> sampleFormData = {
  'fields': [
    {
      'key': 'inputKey1',
      'type': 'Input',
      'label': 'Full Name',
      'placeholder': 'Enter Your Full Name',
      'required': true
    },
    {
      'key': 'inputKey2',
      'type': 'Input',
      'label': 'Phone Number',
      'placeholder': 'Enter Your Phone Number',
      'validator': 'digitsOnly',
      // 'value': 'Hello',
      'required': true
    },
  ],
};
