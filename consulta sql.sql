select '"+fecha+"','"+fecha1+"',aa.cpID_Productor,left(rtrim(cpApePaternProduc)+' '+rtrim(cpApeMaterProduc)+' '+rtrim(cpNombresProduc),40) as nombre,  
aa.cpid_unidadoperativa,bb.cpdescriunidopera,    
 cpID_RepresProductor,left(rtrim(cpApePateReprePro)+' '+rtrim(cpApeMateReprePro)+' '+rtrim(cpNombresReprePro),40) as repre,CC.cpDNIRepreProd,    
 aa.cpID_Ubigeo,dd.cpDescripUbigeo,cc.cpbase,ee.cpdescripcion,cc.cpsector,ff.cpdescripcion ,  
 
 -- Enero 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20260101', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20260131', 112)) as kilos1,  
 
 -- Febrero 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20260201', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20260228', 112)) as kilos2,  
 
 -- Marzo 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20260301', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20260331', 112)) as kilos3,  
 
 -- Abril 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20260401', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20260430', 112)) as kilos4,  
 
 -- Mayo 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20260501', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20260531', 112)) as kilos5,  
 
 -- Junio 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20260601', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20260630', 112)) as kilos6,  
 
 -- Julio 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20260701', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20260731', 112)) as kilos7,  
 
 -- Agosto 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20260801', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20260831', 112)) as kilos8,  
 
 -- Septiembre 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20260901', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20260930', 112)) as kilos9,  
 
 -- Octubre 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20261001', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20261031', 112)) as kilos10,  
 
 -- Noviembre 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20261101', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20261130', 112)) as kilos11,  
 
 -- Diciembre 2026
 (select SUM(bb1.cpPesNetIteComCMP*0.46) as kil from CMP_ComprobanCompra aa1,CMP_ItemCompCMP bb1 where aa1.cpID_CompCMPGen=bb1.cpID_CompCMPGen  
 and aa1.cpCompCMPAnulado='0' and aa1.cpid_productor=AA.cpid_productor AND AA1.CPDNI=CC.CPDNIREPREPROD and aa1.cpID_UnidadOperativa='090060'   
 and aa1.cpFechaCompCompra >= CONVERT(datetime, '20261201', 112) and aa1.cpFechaCompCompra <= CONVERT(datetime, '20261231', 112)) as kilos12  

from cmp_productor aa inner join mge_unidadoperativa bb on  aa.cpid_unidadoperativa=bb.cpid_unidadoperativa  
inner join cmp_represproductor cc on aa.cpid_productor=cc.cpid_productor and cpDNIRepreProd<>'' and not cpDNIRepreProd is null and cc.cpactivo='1'  
inner join mge_ubigeo dd on aa.cpID_Ubigeo=dd.cpID_Ubigeo
left outer join cmp_base ee on aa.cpid_unidadoperativa=ee.cpid_unidadoperativa and cc.cpbase=ee.cpid_base   
left outer join cmp_sector ff on  aa.cpid_unidadoperativa=ff.cpid_unidadoperativa and cc.cpbase=ff.cpid_base and cc.cpsector=ff.cpid_sector  
where cpID_Situacion<>'07'  and aa.cpID_UnidadOperativa='090060'
order by aa.cpid_unidadoperativa,cpbase,cpsector,left(rtrim(cpApePaternProduc)+' '+rtrim(cpApeMaterProduc)+' '+rtrim(cpNombresProduc),40)