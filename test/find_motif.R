imports "package_utils" from "devkit";

package_utils::attach("F:\GCModeller\src\workbench\pkg");

require(GCModeller);

imports "bioseq.fasta" from "seqtoolkit";
imports "bioseq.patterns" from "seqtoolkit";

raw = read.fasta("E:\GCA_000005845.2_ASM584v2_genomic\cellular_graph\tmp\.works\extract_genbank_src\upstream_locis.fasta");
raw = read.fasta("E:\GCA_000005845.2_ASM584v2_genomic\test\LexA.fasta");
motif = find_motifs(raw, debug = TRUE);

setwd(@dir);

for(x in motif) {
    bitmap(file = `${@dir}/plot/${toString(x)}.png`) {
        plot(x);
    }
}