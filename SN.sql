Set Transaction Isolation Level snapshot
use Rsys2003;
Select distinct
			I.CodBarras as SN,
			N.DataMovimento as Data,
			P.CodFornecedor as Fornecedor
 from Rsys2003..NotasFiscais N  with(nolock)
             left join Rsys2003..MovEstoque M with(nolock) on M.Empresa= n.Empresa and n.CodControle = m.CodControle and m.TipoControle = n.TipoControle
			 left Join Rsys2003..PedidoCompra P with(nolock) on M.CodPedCompra = P.CodPedido
			 left join Rsys2003..identidadeproduto I with(nolock) on I.NumDocumentoSaida = N.NumDocumento
where year(N.DataMovimento) = '2020' and N.TipoControle = 1 and I.CodBarras LIKE 'AS%';





Set Transaction Isolation Level snapshot
Select distinct
			I.CodBarras as SN,
			N.DataMovimento as Data,
			P.CodFornecedor as Fornecedor
 from [192.168.20.50\MSSQLSRV2012].[Rsys2003Tagia].dbo.NotasFiscais N  with(nolock)
             left join [192.168.20.50\MSSQLSRV2012].[Rsys2003Tagia].dbo.MovEstoque M with(nolock) on M.Empresa= n.Empresa and n.CodControle = m.CodControle and m.TipoControle = n.TipoControle
			 left Join [192.168.20.50\MSSQLSRV2012].[Rsys2003Tagia].dbo.PedidoCompra P with(nolock) on M.CodPedCompra = P.CodPedido
			 left join [192.168.20.50\MSSQLSRV2012].[Rsys2003Tagia].dbo.identidadeproduto I with(nolock) on I.NumDocumentoSaida = N.NumDocumento
where year(N.DataMovimento) = '2020' and N.TipoControle = 1 and I.CodBarras LIKE 'AS%';