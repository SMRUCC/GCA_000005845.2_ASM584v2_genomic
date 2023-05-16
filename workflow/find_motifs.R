require(GCModeller);
require(JSON);

imports "bioseq.fasta" from "seqtoolkit";
imports "bioseq.patterns" from "seqtoolkit";

setwd(@dir);

raw = read.fasta("E:\GCA_000005845.2_ASM584v2_genomic\cellular_graph\tmp\.works\extract_genbank_src\upstream_locis.fasta");
pack = open.seedFile("./seeds.pack");
motifs = find_motifs(raw, seeds = pack, noccurs = 6, debug = FALSE);

motifs
|> JSON::json_encode()
|> writeLines(con = "./motifs.json")
;

for(motif in motifs) {
    bitmap(file = `./plots/${toString(motif)}.png`) {
        plot(motif);
    }
}