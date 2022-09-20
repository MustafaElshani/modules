#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FLAIR_DIFFSPLICE } from '../../../../modules/flair/diffsplice/main.nf'

workflow test_flair_diffsplice {
    
    input = file(params.test_data['sarscov2']['illumina']['test_single_end_bam'], checkIfExists: true)

    FLAIR_DIFFSPLICE ( input )
}
