new Function(require('fs').readFileSync('index.html','utf8').match(/<script>([\s\S]*)<\/script>/)[1]); console.log('JS syntax OK');
