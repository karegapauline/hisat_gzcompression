process COMPRESS {
    label 'compress'
    publishDir params.outdir
	
    input:
    tuple val(name), path(reads)
	
    output:
    tuple val(name), path("${name}*.fastqsanger.gz"), emit: sample_compressed
	
    script:
    """
    gzip $reads 
    
    """
    
   }
