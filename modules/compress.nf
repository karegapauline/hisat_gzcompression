process COMPRESS {
    label 'compress'
    publishDir params.outdir
    
    input:
    tuple val(name), path(reads)
	
    output:
    tuple val(name), path("${name}*.gz"), emit: compressed_reads
	
script:
    """
    gzip -f ${reads[0]}
    gzip -f ${reads[1]}
    """
}
 