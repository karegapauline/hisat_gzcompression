process DECOMPRESS {
    label 'decompress'
    publishDir params.outdir
    
    input:
    tuple val(name), path(reads)
	
    output:
    tuple val(name), path("${name}*fastqsanger"), emit: decompressed_reads
	
    script:
    """
    gunzip -f ${reads[0]}
    gunzip -f ${reads[1]}
    """
}