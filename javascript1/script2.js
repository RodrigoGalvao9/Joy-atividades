// Capturando os elementos HTML
const titulo = document.getElementById('titulo');
const listaNaoOrdenada = document.querySelector('ul');
const link = document.querySelector('a');
const listaOrdenada = document.getElementById('lista-ordenada');

// Adicionando texto ao título e ao link
titulo.innerText = 'Projeto com JavaScript';
link.innerText = 'Visite Prozeducacao';

// Adicionando itens à lista não ordenada
listaNaoOrdenada.innerHTML = `
    <li>Item 1</li>
    <li>Item 2</li>
    <li>Item 3</li>
`;

// Adicionando itens à lista ordenada com links
listaOrdenada.innerHTML = `
    <li><a href="https://site1.com">Site 1</a></li>
    <li><a href="https://site2.com">Site 2</a></li>
    <li><a href="https://site3.com">Site 3</a></li>
`;