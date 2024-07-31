const produto = document.createElement('div');
produto.className = 'produto';

const nomeProduto = document.createElement('h2');
nomeProduto.innerText = 'Camiseta Confortável';

const descricaoProduto = document.createElement('p');
descricaoProduto.innerText = 'Camiseta 100% algodão, disponível em várias cores e tamanhos.';

const precoProduto = document.createElement('p');
precoProduto.innerText = 'Preço: R$ 49,99';

const imagemProduto = document.createElement('img');
imagemProduto.src = 'https://via.placeholder.com/150';
imagemProduto.alt = 'Camiseta';

produto.appendChild(imagemProduto);
produto.appendChild(nomeProduto);
produto.appendChild(descricaoProduto);
produto.appendChild(precoProduto);

document.body.appendChild(produto);