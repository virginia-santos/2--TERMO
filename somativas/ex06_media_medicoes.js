const entrada = require(`readline-sync`);

let opcao = 0;

while (opcao != 5); {
    console.log(`Digite o primeiro valor:`);
    const valor1 = entrada.questionFloat();
    console.log(`Digite o segundo valor:`);
    const valor2 = entrada.questionFloat();
    console.log(`Digite o terceiro valor:`);
    const valor3 = entrada.questionFloat();
    console.log(`Digite o quarto valor:`);
    const valor4 = entrada.questionFloat();
    console.log(`Digite o quinto valor:`);
    const valor5 = entrada.questionFloat();
   
}

soma = 0
console.log(`A soma dos valores é: ${soma = valor1 + valor2 + valor3 + valor4 + valor5 }`);

media = soma/5;
console.log(`A média final é: ${media}`);