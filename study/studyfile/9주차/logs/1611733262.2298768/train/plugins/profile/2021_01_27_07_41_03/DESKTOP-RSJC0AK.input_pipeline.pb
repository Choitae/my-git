	z?):????z?):????!z?):????	???AE?2@???AE?2@!???AE?2@"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$z?):?????):????A??j+????Y+??η?*	????̜`@2F
Iterator::Model*??Dذ?!?F??e?H@)??b?=??1?u-T;?B@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?k	??g??!?ܕֆ?<@)L7?A`???1?D????8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???????!kv??t1@)??ׁsF??1??@???-@:Preprocessing2U
Iterator::Model::ParallelMapV2L7?A`???!?D????(@)L7?A`???1?D????(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipŏ1w-??!?o|?>I@)?~j?t?x?1xN[@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlicen??t?!e?T??~@)n??t?1e?T??~@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor_?Q?k?!????mw@)_?Q?k?1????mw@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 18.7% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*high2t25.9 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9???AE?2@>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?):?????):????!?):????      ??!       "      ??!       *      ??!       2	??j+??????j+????!??j+????:      ??!       B      ??!       J	+??η?+??η?!+??η?R      ??!       Z	+??η?+??η?!+??η?JCPU_ONLYY???AE?2@b 