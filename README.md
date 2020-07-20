# terraform_javascript_interface

> Interface for call terraform from your nodejs proyect, for example you can call apply or destroy terraform command from express or any event


## Requisites
- ansible 2.5.1 or above
- copy your terraform project files to folder node_modules/terraform_javascript_interface/shared

## Install

```bash
npm i terraform_javascript_interface
```

## Usage

```javascript
const instanceTerraForm = require('terraform_javascript_interface')

instanceTerraForm('destroy').then(data=>{
    console.log(data)
})

instanceTerraForm('apply').then(data=>{
    console.log(data)
})
```


## License

[MIT](http://vjpr.mit-license.org)
# jasseral-terraform_javascript_interface
