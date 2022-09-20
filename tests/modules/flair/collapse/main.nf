#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FLAIR_COLLAPSE } from '../../../../modules/flair/collapse/main.nf'

workflow test_flair_collapse {
    
    input = file(params.test_data['sarscov2']['illumina']['test_single_end_bam'], checkIfExists: true)

    FLAIR_COLLAPSE ( input )
}
