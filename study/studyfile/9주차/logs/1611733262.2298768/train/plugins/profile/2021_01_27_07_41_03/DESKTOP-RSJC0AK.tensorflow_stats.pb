"?7
BHostIDLE"IDLE1fffffg?@Afffffg?@a?Y??????i?Y???????Unknown
uHostFlushSummaryWriter"FlushSummaryWriter(1     ??@9     ??@A     ??@I     ??@ah?
wv??i????????Unknown?
dHostDataset"Iterator::Model(133333sP@933333sP@Afffff?H@Ifffff?H@a3Q?w)??i?ɡ?Z????Unknown
iHostWriteSummary"WriteSummary(1fffff&A@9fffff&A@Afffff&A@Ifffff&A@a5?Eݩz?i?U??????Unknown?
?HostDataset"/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap(133333?B@933333?B@A     ?@@I     ?@@a?T:>(?y?ig?,??L???Unknown
?HostSoftmaxCrossEntropyWithLogits":categorical_crossentropy/softmax_cross_entropy_with_logits(1?????5@9?????5@A?????5@I?????5@a{?! gp?ij?o??m???Unknown
?HostDataset"5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat(13333337@93333337@A??????3@I??????3@a/????n?i6!??????Unknown
?HostReadVariableOp",sequential_5/dense_13/BiasAdd/ReadVariableOp(13333332@93333332@A3333332@I3333332@a??D??Kl?i5LLߨ???Unknown
s	HostDataset"Iterator::Model::ParallelMapV2(1     ?0@9     ?0@A     ?0@I     ?0@a?T:>(?i?i??\t?????Unknown
?
HostResourceApplyAdam"$Adam/Adam/update_1/ResourceApplyAdam(1ffffff/@9ffffff/@Affffff/@Iffffff/@a/nS??hh?i??@4?????Unknown
?HostResourceApplyAdam"$Adam/Adam/update_2/ResourceApplyAdam(1??????)@9??????)@A??????)@I??????)@a$jn???c?ibH߹?????Unknown
rHostSoftmax"sequential_5/dense_13/Softmax(1      )@9      )@A      )@I      )@a?ӷ|oc?i6 \?D???Unknown
?HostResourceApplyAdam""Adam/Adam/update/ResourceApplyAdam(1??????'@9??????'@A??????'@I??????'@a??.?Xb?i ?[????Unknown
?HostMatMul",gradient_tape/sequential_5/dense_13/MatMul_1(1??????&@9??????&@A??????&@I??????&@a?VO?a?iW(??V&???Unknown
?HostResourceApplyAdam"$Adam/Adam/update_3/ResourceApplyAdam(1??????@9??????@A??????@I??????@aK?X?i}???2???Unknown
tHost_FusedMatMul"sequential_5/dense_12/Relu(1      @9      @A      @I      @aad??$RW?i/?MH>???Unknown
[HostAddV2"Adam/add(1ffffff@9ffffff@Affffff@Iffffff@a?}?;?V?in?k?QI???Unknown
xHostDataset"#Iterator::Model::ParallelMapV2::Zip(1fffff?P@9fffff?P@A      @I      @a???D?R?i0???R???Unknown
^HostGatherV2"GatherV2(1333333@9333333@A333333@I333333@a0??R?i8??d?[???Unknown
ZHostArgMax"ArgMax(1??????@9??????@A??????@I??????@a?VO?Q?icA?d???Unknown
eHost
LogicalAnd"
LogicalAnd(1??????@9??????@A??????@I??????@a?VO?Q?i?Κ?cm???Unknown?
lHostIteratorGetNext"IteratorGetNext(1??????@9??????@A??????@I??????@a?)????P?i#????u???Unknown
`HostGatherV2"
GatherV2_1(1      @9      @A      @I      @aׅ??0O?iD?+ ?}???Unknown
?HostReadVariableOp"+sequential_5/dense_13/MatMul/ReadVariableOp(1      @9      @A      @I      @aׅ??0O?iek]U????Unknown
?HostDataset"?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlice(1??????@9??????@A??????@I??????@a????xN?i??K?????Unknown
?HostReadVariableOp"+sequential_5/dense_12/MatMul/ReadVariableOp(1ffffff@9ffffff@Affffff@Iffffff@a???`?L?iX?#????Unknown
~HostMatMul"*gradient_tape/sequential_5/dense_12/MatMul(1??????@9??????@A??????@I??????@a??׹?\K?iLwwa?????Unknown
~HostMatMul"*gradient_tape/sequential_5/dense_13/MatMul(1??????@9??????@A??????@I??????@a??׹?\K?i@?e?ȡ???Unknown
?HostDataset"AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(1333333@9333333??A333333@I333333??a?PU??$E?i???????Unknown
wHost_FusedMatMul"sequential_5/dense_13/BiasAdd(1ffffff
@9ffffff
@Affffff
@Iffffff
@at?a˹?D?i?VI3????Unknown
vHostAssignAddVariableOp"AssignAddVariableOp_2(1??????	@9??????	@A??????	@I??????	@a$jn???C?i?v??,????Unknown
[ HostPow"
Adam/Pow_1(1??????@9??????@A??????@I??????@a??zqQGC?id???????Unknown
Y!HostPow"Adam/Pow(1      @9      @A      @I      @a???D?B?iE?kƨ????Unknown
v"HostReadVariableOp"Adam/Cast_3/ReadVariableOp(1333333@9333333@A333333@I333333@a0??B?iIܱ +????Unknown
?#HostReluGrad",gradient_tape/sequential_5/dense_12/ReluGrad(1333333@9333333@A333333@I333333@a0??B?iM??:?????Unknown
v$HostAssignAddVariableOp"AssignAddVariableOp_1(1??????@9??????@A??????@I??????@a?)????@?i?,'??????Unknown
V%HostSum"Sum_2(1??????@9??????@A??????@I??????@a?)????@?i??V{????Unknown
]&HostCast"Adam/Cast_1(1ffffff@9ffffff@Affffff@Iffffff@a???`?<?i?Y??????Unknown
\'HostArgMax"ArgMax_1(1??????@9??????@A??????@I??????@a??׹?\;?i?JP?????Unknown
t(HostAssignAddVariableOp"AssignAddVariableOp(1??????@9??????@A??????@I??????@a??׹?\;?i??G%}????Unknown
`)HostDivNoNan"
div_no_nan(1?????? @9?????? @A?????? @I?????? @aO??_?:?iɃ3??????Unknown
?*HostBiasAddGrad"7gradient_tape/sequential_5/dense_13/BiasAdd/BiasAddGrad(1       @9       @A       @I       @a?
'?8?i
E??????Unknown
X+HostCast"Cast_1(1ffffff??9ffffff??Affffff??Iffffff??a
#???7?in??3?????Unknown
?,HostBiasAddGrad"7gradient_tape/sequential_5/dense_12/BiasAdd/BiasAddGrad(1????????9????????A????????I????????ah7<RVc6?i????????Unknown
v-HostAssignAddVariableOp"AssignAddVariableOp_4(1333333??9333333??A333333??I333333??a?PU??$5?i?s<B????Unknown
X.HostEqual"Equal(1????????9????????A????????I????????a$jn???3?il?&?????Unknown
?/HostReadVariableOp",sequential_5/dense_12/BiasAdd/ReadVariableOp(1????????9????????A????????I????????a$jn???3?i9???;????Unknown
~0HostAssignAddVariableOp"Adam/Adam/AssignAddVariableOp(1      ??9      ??A      ??I      ??a???D?2?i)H???????Unknown
o1HostReadVariableOp"Adam/ReadVariableOp(1      ??9      ??A      ??I      ??a???D?2?i?+??????Unknown
{2HostSum"*categorical_crossentropy/weighted_loss/Sum(1      ??9      ??A      ??I      ??a???D?2?i	j??:????Unknown
?3HostDivNoNan",categorical_crossentropy/weighted_loss/value(1      ??9      ??A      ??I      ??a???D?2?i??|??????Unknown
t4HostReadVariableOp"Adam/Cast/ReadVariableOp(1333333??9333333??A333333??I333333??a5??m??-?iS??m????Unknown
v5HostAssignAddVariableOp"AssignAddVariableOp_3(1????????9????????A????????I????????a??׹?\+?i?rX#????Unknown
b6HostDivNoNan"div_no_nan_1(1????????9????????A????????I????????a??׹?\+?iM?'?????Unknown
v7HostReadVariableOp"Adam/Cast_2/ReadVariableOp(1      ??9      ??A      ??I      ??a?
'?(?i?pk*g????Unknown
w8HostReadVariableOp"div_no_nan/ReadVariableOp_1(1      ??9      ??A      ??I      ??a?
'?(?i???,?????Unknown
a9HostIdentity"Identity(1ffffff??9ffffff??Affffff??Iffffff??aߜ???i!?i?{*?????Unknown?
y:HostReadVariableOp"div_no_nan_1/ReadVariableOp_1(1ffffff??9ffffff??Affffff??Iffffff??aߜ???i!?i?%yc"????Unknown
u;HostReadVariableOp"div_no_nan/ReadVariableOp(1333333??9333333??A333333??I333333??a5??m???iΒ?1????Unknown
w<HostReadVariableOp"div_no_nan_1/ReadVariableOp(1333333??9333333??A333333??I333333??a5??m???i?????????Unknown*?7
uHostFlushSummaryWriter"FlushSummaryWriter(1     ??@9     ??@A     ??@I     ??@anF:??inF:???Unknown?
dHostDataset"Iterator::Model(133333sP@933333sP@Afffff?H@Ifffff?H@a?k??I???i?q???????Unknown
iHostWriteSummary"WriteSummary(1fffff&A@9fffff&A@Afffff&A@Ifffff&A@a????+o??iC??@?;???Unknown?
?HostDataset"/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap(133333?B@933333?B@A     ?@@I     ?@@a???J?n??i?u????Unknown
?HostSoftmaxCrossEntropyWithLogits":categorical_crossentropy/softmax_cross_entropy_with_logits(1?????5@9?????5@A?????5@I?????5@atl??B??i??o??????Unknown
?HostDataset"5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat(13333337@93333337@A??????3@I??????3@ac??ӄ~?i???=????Unknown
?HostReadVariableOp",sequential_5/dense_13/BiasAdd/ReadVariableOp(13333332@93333332@A3333332@I3333332@aH?N?||?iɁ?6?W???Unknown
sHostDataset"Iterator::Model::ParallelMapV2(1     ?0@9     ?0@A     ?0@I     ?0@a???J?ny?i?Sf??????Unknown
?	HostResourceApplyAdam"$Adam/Adam/update_1/ResourceApplyAdam(1ffffff/@9ffffff/@Affffff/@Iffffff/@apn?3x?i?\??????Unknown
?
HostResourceApplyAdam"$Adam/Adam/update_2/ResourceApplyAdam(1??????)@9??????)@A??????)@I??????)@a?HN??s?i???^????Unknown
rHostSoftmax"sequential_5/dense_13/Softmax(1      )@9      )@A      )@I      )@a<hrWDs?i?ѳ?????Unknown
?HostResourceApplyAdam""Adam/Adam/update/ResourceApplyAdam(1??????'@9??????'@A??????'@I??????'@a?v*? 0r?iv&??F-???Unknown
?HostMatMul",gradient_tape/sequential_5/dense_13/MatMul_1(1??????&@9??????&@A??????&@I??????&@a6?AK?q?i??/?kP???Unknown
?HostResourceApplyAdam"$Adam/Adam/update_3/ResourceApplyAdam(1??????@9??????@A??????@I??????@a???DzZh?i?7t?h???Unknown
tHost_FusedMatMul"sequential_5/dense_12/Relu(1      @9      @A      @I      @a}???g?i^?C?????Unknown
[HostAddV2"Adam/add(1ffffff@9ffffff@Affffff@Iffffff@a???Z#?e?iZ̞ȕ???Unknown
xHostDataset"#Iterator::Model::ParallelMapV2::Zip(1fffff?P@9fffff?P@A      @I      @aD?c?b?i?/xG????Unknown
^HostGatherV2"GatherV2(1333333@9333333@A333333@I333333@a}V?6?a?iG!?D(????Unknown
ZHostArgMax"ArgMax(1??????@9??????@A??????@I??????@a6?AK?a?i}?؏?????Unknown
eHost
LogicalAnd"
LogicalAnd(1??????@9??????@A??????@I??????@a6?AK?a?i???L????Unknown?
lHostIteratorGetNext"IteratorGetNext(1??????@9??????@A??????@I??????@a?????`?i???e?????Unknown
`HostGatherV2"
GatherV2_1(1      @9      @A      @I      @aƦPj??^?i???D\????Unknown
?HostReadVariableOp"+sequential_5/dense_13/MatMul/ReadVariableOp(1      @9      @A      @I      @aƦPj??^?i.?.$????Unknown
?HostDataset"?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlice(1??????@9??????@A??????@I??????@a fޯ?5^?iaކ????Unknown
?HostReadVariableOp"+sequential_5/dense_12/MatMul/ReadVariableOp(1ffffff@9ffffff@Affffff@Iffffff@a????g\\?i3"GL*???Unknown
~HostMatMul"*gradient_tape/sequential_5/dense_12/MatMul(1??????@9??????@A??????@I??????@a "?? [?i??L??7???Unknown
~HostMatMul"*gradient_tape/sequential_5/dense_13/MatMul(1??????@9??????@A??????@I??????@a "?? [?iU?R0E???Unknown
?HostDataset"AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(1333333@9333333??A333333@I333333??a^?,?b?T?i?[?9?O???Unknown
wHost_FusedMatMul"sequential_5/dense_13/BiasAdd(1ffffff
@9ffffff
@Affffff
@Iffffff
@a?Y??XT?iϸ8??Y???Unknown
vHostAssignAddVariableOp"AssignAddVariableOp_2(1??????	@9??????	@A??????	@I??????	@a?HN??S?i???۴c???Unknown
[HostPow"
Adam/Pow_1(1??????@9??????@A??????@I??????@a
?Փ?S?i?ǩLCm???Unknown
Y HostPow"Adam/Pow(1      @9      @A      @I      @aD?c?R?i?y?҂v???Unknown
v!HostReadVariableOp"Adam/Cast_3/ReadVariableOp(1333333@9333333@A333333@I333333@a}V?6?Q?i>??ms???Unknown
?"HostReluGrad",gradient_tape/sequential_5/dense_12/ReluGrad(1333333@9333333@A333333@I333333@a}V?6?Q?i?j?d????Unknown
v#HostAssignAddVariableOp"AssignAddVariableOp_1(1??????@9??????@A??????@I??????@a?????P?iSq
ζ????Unknown
V$HostSum"Sum_2(1??????@9??????@A??????@I??????@a?????P?i?w_?	????Unknown
]%HostCast"Adam/Cast_1(1ffffff@9ffffff@Affffff@Iffffff@a????g\L?i???? ????Unknown
\&HostArgMax"ArgMax_1(1??????@9??????@A??????@I??????@a "?? K?io?B??????Unknown
t'HostAssignAddVariableOp"AssignAddVariableOp(1??????@9??????@A??????@I??????@a "?? K?i8kE?????Unknown
`(HostDivNoNan"
div_no_nan(1?????? @9?????? @A?????? @I?????? @a?????I?i?kO*????Unknown
?)HostBiasAddGrad"7gradient_tape/sequential_5/dense_13/BiasAdd/BiasAddGrad(1       @9       @A       @I       @a?!e?H?ih???T????Unknown
X*HostCast"Cast_1(1ffffff??9ffffff??Affffff??Iffffff??aw????mG?i??0????Unknown
?+HostBiasAddGrad"7gradient_tape/sequential_5/dense_12/BiasAdd/BiasAddGrad(1????????9????????A????????I????????a?82F?iӬ??????Unknown
v,HostAssignAddVariableOp"AssignAddVariableOp_4(1333333??9333333??A333333??I333333??a^?,?b?D?i=?]3?????Unknown
X-HostEqual"Equal(1????????9????????A????????I????????a?HN??C?iC01??????Unknown
?.HostReadVariableOp",sequential_5/dense_12/BiasAdd/ReadVariableOp(1????????9????????A????????I????????a?HN??C?iI???????Unknown
~/HostAssignAddVariableOp"Adam/Adam/AssignAddVariableOp(1      ??9      ??A      ??I      ??aD?c?B?i/?Qw????Unknown
o0HostReadVariableOp"Adam/ReadVariableOp(1      ??9      ??A      ??I      ??aD?c?B?it?????Unknown
{1HostSum"*categorical_crossentropy/weighted_loss/Sum(1      ??9      ??A      ??I      ??aD?c?B?i???׶????Unknown
?2HostDivNoNan",categorical_crossentropy/weighted_loss/value(1      ??9      ??A      ??I      ??aD?c?B?i?%ޚV????Unknown
t3HostReadVariableOp"Adam/Cast/ReadVariableOp(1333333??9333333??A333333??I333333??a9%l??=?if?<?	????Unknown
v4HostAssignAddVariableOp"AssignAddVariableOp_3(1????????9????????A????????I????????a "?? ;?i?G??m????Unknown
b5HostDivNoNan"div_no_nan_1(1????????9????????A????????I????????a "?? ;?i.????????Unknown
v6HostReadVariableOp"Adam/Cast_2/ReadVariableOp(1      ??9      ??A      ??I      ??a?!e?8?ir????????Unknown
w7HostReadVariableOp"div_no_nan/ReadVariableOp_1(1      ??9      ??A      ??I      ??a?!e?8?i?2?%?????Unknown
a8HostIdentity"Identity(1ffffff??9ffffff??Affffff??Iffffff??a?d`C1?i??$????Unknown?
y9HostReadVariableOp"div_no_nan_1/ReadVariableOp_1(1ffffff??9ffffff??Affffff??Iffffff??a?d`C1?i|R??L????Unknown
u:HostReadVariableOp"div_no_nan/ReadVariableOp(1333333??9333333??A333333??I333333??a9%l??-?i>??~&????Unknown
w;HostReadVariableOp"div_no_nan_1/ReadVariableOp(1333333??9333333??A333333??I333333??a9%l??-?i      ???Unknown