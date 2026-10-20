const entrada = require(`readline-sync`);

const temperatura = entrada.questionFloat(`Informe a temperatura:`);

if (temperatura <= 60) {
    console.log(`NORMAL`);

} else if ( temperatura > 60 && temperatura <= 80 ) {
    console.log(`ATENÇÃO`);
} else {
    console.log(`situação CRÍTICA`);
}

