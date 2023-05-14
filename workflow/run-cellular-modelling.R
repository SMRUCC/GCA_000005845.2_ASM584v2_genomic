require(CellRender);

const src_genbank = `${dirname(@dir)}/source/NC_000913.gb`;
const cells_model = `${dirname(@dir)}/cellular_graph/`;

CellRender::modelling_cellgraph(src = src_genbank, outputdir = cells_model);