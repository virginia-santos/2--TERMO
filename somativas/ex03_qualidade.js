const entrada = require('readline-sync');

const peso = entrada.questionFloat('Informe o peso da peca: ');

if (peso > 95 && peso < 105) {
    console.log('PECA APROVADA')
} else {
    console.log('PECA REPROVADA')
}

console.log(`O peso da peca e: ${peso}`)