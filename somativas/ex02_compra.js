const entrada = require('readline-sync');

const material = entrada.question('Qual e o nome do material?');
const quantidade = entrada.questionInt('Qual foi a quantidade comprada de material?');
const preco = entrada.questionFloat('Qual foi o preco unitario do material?');

const valorTotal = quantidade * preco;

console.log(`o Material comprado foi: ${material}`);
console.log(`A quantidade comprada foi: ${quantidade}`);
console.log(`O preco unitario do material foi: ${preco}`);
console.log(`O valor total da compra foi: ${valorTotal}`);