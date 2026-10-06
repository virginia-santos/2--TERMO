const fs = require('fs')

console.log("=== SISTEMA DE PERSISTÊNCIA: REGISTRO DE MÁQUINAS ===");

// 1. Definição da estrutura de dados em memória(arrays de objetos)
const maquinasIndustriais = [
     {id: 101, nome: "Torno Mecânico Universal", setor: "usinagem", operacional: true},
     {id: 102, nome: "Fresadora Ferramenteira", setor: "usinagem", operacional: false},
     {id: 103, nome: "Prensa Hidraúlica 50T", setor: "estampagem", operacional: true},
     {id: 104, nome: "Compressor", setor: "Utilidades", operacional: false},

];

// 2. Conversão da estrutura em formato texto legivel (JSON indentado)
const dadosParaGravar = JSON.stringify(maquinasIndustriais, null, 2);

// 3.Gravação física no disco rígido
const nomeDoArquivo = "maquinas.json";
fs.writeFileSync(nomeDoArquivo, dadosParaGravar);

console.log(`\nGravação concluída com sucesso.`);
console.log(`Verifique o arquivo '${nomeDoArquivo}' gerado na barra lateral do VS Code`);