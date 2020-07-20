module.exports = function (command) {
    
    let promise = new Promise((resolve,reject)=>{
        
        var errorFlag = false 
        var stdAppend = ''  
        
        const { spawn } = require('child_process')
        
        let opts = {
            "cwd": __dirname + '/shared',
        }
        
        const child = spawn('terraform', [command,'--auto-approve'],opts)  
        
        child.stdout.on( 'data', data => {
            console.log( `stdout: ${data}` )
            stdAppend += data.toString('utf8')
        } )
        
        child.stderr.on( 'data', data => {
            console.log( `stderr: ${data}` )
            errorFlag = true
            stdAppend += data        
        } )
        
        child.on('close', code => {
            if(code === 0) {
                resolve(new Object({errorFlag:errorFlag,stdAppend:stdAppend}))
            }else{
                errorFlag = true
                resolve(new Object({errorFlag:errorFlag,stdAppend:stdAppend}))
                //console.log( `child process exited with code ${code}` )
            } 
        })      
    })
    
    return promise
}

