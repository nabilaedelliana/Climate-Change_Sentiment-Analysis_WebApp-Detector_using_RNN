??"
?,?,
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle???element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements(
handle???element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.8.22v2.8.2-0-g2ea19cbb5758??!
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?]@*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	?]@*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:<*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
!simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@<*2
shared_name#!simple_rnn/simple_rnn_cell/kernel
?
5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp!simple_rnn/simple_rnn_cell/kernel*
_output_shapes

:@<*
dtype0
?
+simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*<
shared_name-+simple_rnn/simple_rnn_cell/recurrent_kernel
?
?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp+simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:<<*
dtype0
?
simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*0
shared_name!simple_rnn/simple_rnn_cell/bias
?
3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOpsimple_rnn/simple_rnn_cell/bias*
_output_shapes
:<*
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name682*
value_dtype0	
|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?]@*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes
:	?]@*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:<*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
(Adam/simple_rnn/simple_rnn_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@<*9
shared_name*(Adam/simple_rnn/simple_rnn_cell/kernel/m
?
<Adam/simple_rnn/simple_rnn_cell/kernel/m/Read/ReadVariableOpReadVariableOp(Adam/simple_rnn/simple_rnn_cell/kernel/m*
_output_shapes

:@<*
dtype0
?
2Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*C
shared_name42Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/m
?
FAdam/simple_rnn/simple_rnn_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp2Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/m*
_output_shapes

:<<*
dtype0
?
&Adam/simple_rnn/simple_rnn_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*7
shared_name(&Adam/simple_rnn/simple_rnn_cell/bias/m
?
:Adam/simple_rnn/simple_rnn_cell/bias/m/Read/ReadVariableOpReadVariableOp&Adam/simple_rnn/simple_rnn_cell/bias/m*
_output_shapes
:<*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?]@*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes
:	?]@*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:<*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
?
(Adam/simple_rnn/simple_rnn_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@<*9
shared_name*(Adam/simple_rnn/simple_rnn_cell/kernel/v
?
<Adam/simple_rnn/simple_rnn_cell/kernel/v/Read/ReadVariableOpReadVariableOp(Adam/simple_rnn/simple_rnn_cell/kernel/v*
_output_shapes

:@<*
dtype0
?
2Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*C
shared_name42Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/v
?
FAdam/simple_rnn/simple_rnn_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp2Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/v*
_output_shapes

:<<*
dtype0
?
&Adam/simple_rnn/simple_rnn_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*7
shared_name(&Adam/simple_rnn/simple_rnn_cell/bias/v
?
:Adam/simple_rnn/simple_rnn_cell/bias/v/Read/ReadVariableOpReadVariableOp&Adam/simple_rnn/simple_rnn_cell/bias/v*
_output_shapes
:<*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?]*
dtype0*??
value??B???]BclimateBchangeBglobalBwarmingBsBqBntBtrumpBampBrealBbelieveBusBworldBlikeBpeopleBhoaxBscienceBoneBmanBnewBthinkBmadeBgoingBwouldBhBweatherBviaBknowBmakeBsayBstopBobamaBgetBfightB
scientistsBuBgoodBreBeaBneedBrightByearsBtimeBchangB	presidentBsaysBcouldBcausedBstillBsaidBalBwantBthreatBpaBgoreBcauseBmuchBnewsBreallyBiceBevenBcarbonBseeBmBdataBmustBfakeBtalkBepaBthingBdueBgoBenergyBdieByearBalsoBtakeBplanetBdayBcaBtodayBdonaldBcoldBgreatBcalledBthinkingBfirstBchineseBscamBwatchBsnowBmoneyBstaBhotBactionBeveryBnothingB
governmentBblameBlookBendBrepoBmayBsuppoBtaxBleftBletBgotBbigBtellBeverBdenierBamericaBwellBwayBparisBfactBbackBhumanBhelpBcoBcBthinksBliberalsBreadBwarmBsayingBnaBgiveBnextBcareBlastByesB	scientistBresearchBneverBgtBpleaseBmanyBissueBbiggestBwinterBthingsBwBllBhusbandBdegreesBcreatedBcausingBbelievesBunBsinceBseaB	politicalBpenguinBnuclearBmaybeBloveBlolBhumansBfutureBairBdenyingBanotherBohBevidenceBdeniersBtalkingBmillionsBliberalBhttBchinaBuseBproblemBdebateBcombatBbBoilBgodBdenialBcomeBantiByetB	terrorismBshowBpolicyBorderBnationalBelectBclintonBcallBalwaysBwoBwaterBsureB
scientificBmediaBeffectsBbadBwomenBveBrBnonBnaturalBnBisisBimpoBenvironmentBcountryBanyoneBwhiteBtackleBsaveBpopeBmightBhillaryBeveryoneBedBdenyBmakingBkeepBcoolingBbetterBthBpointBwarBvideoBthoughtBfuckBfightingBbillBworkB	somethingBleadersBheadBcausesBaroundB	agreementBagendaBrightsBquestionBmrBgettingBdealBconceptBclubBalreadyBagoBactuallyBwantsBpruittBoutsideBmeanBheyBvoteBstudyBrememberBlieBageBwrongBweekBshutBrecordBrealityBlifeBimpactBfoodBchannelBawayBwaitBstateBshitBfactsBexistB
everythingBcontrolBclaimsBtwoBthanksBproofB	pollutionBnasaBlittleBingBhopeBhealthB	happeningBexpeBenoughBtoldBsomeoneBseriousBhellBgonBeBaskBantBaddressBpublicBmanufacturingBmajorBkillBguyBfBexplainBtheBmeansBfindBarcticBtrueBscottBreasonBpolarBneedsBlessBgreenBfreezingBfreeBfraudBcomingBbestBusedBpowerBpoorBoldBignoreB
hurricanesB	hurricaneBhistoryBanswerBwholeBtryingBthankBtermBrussiaBreligionBpoliciesBjoinBinsteadBbillionsBagreeB
understandBtryBspeechBsecurityBpostBpmBknowsBextremeBcomesBcleanBchiefB
californiaBbillionBamericanB	alarmistsBwowBworriedBtruthBtimesBstatesBshoBprobablyBokBmythBlongBlevelBhtBelectionBdeniesBusingBsignBresponsibleBpersonBlooksBkidsBhugeBfullBfounderBenvironmentalBdicaprioBcrapBcourseB	countriesBclaimByeahBtweetBtopBrisingBpayBmillionBjohnBjobsBissuesBimpactsBheatBguessBfossilBfinallyBeffoBeconomyBbecomeBactBwhetherBsolutionBplanBgreatestBgovtB	democratsB	concernedBcoalBcnnBblamesBalmostByallBtaxesBspendingBsolveBmakesBliesBlevelsBlatestBhumanityBgetsBeconomicBdoneB	consensusBaskedBworstBworseBwithoutBurBtheoryBsunBstoryBmanipulatedBleadingBleadBkindBinterestingBicleBhouseBfearBdaysBbullshitBworryBtakingB	seriouslyBputBmentionBmatterBleonardoBlBhardBgasBforgetBdiscussBchangesBchangedBtemperatureBsummerBprivateBlyingBlostBliveBleaderBheardBfloridaBfarBfaceBelectedBeffectBdeBdBcutBcompetitiveBbyeBbiggerBbernieBbehindB	americansByorkBwasteBstupidBstBproveBprotectBpoliticsBnoaaBnatureBleaveBhappenedBfunnyBetcBcostBcoolBcitiesBbusinessBanythingBaboBshowsBprovesBnyeBmeetB	literallyBlearnBfuelBfollowBfixB	emissionsBdroughtBdollarsBcrazyB
conferenceBclearBcityBcheckBbearsBassBwonderBvBstoppedBriseBrepublicansB	predictedBniceBmassiveBlotBgenderBfundingBfoundBexistsBentireBenlistBeatingBdestroyBcrisisB
contributeBcaseBcallsBbuildBbsBbcBviewsBunitedBtakesBtacklingBstandBsoonBsolarBseenBsandersBmeatBmanmadeBmainBlivesBindustryBideaBhappenBgopBfuckingBfireBfeelBerBdocumentaryBdiBcongressB	companiesBchildrenBbooksB	accordingBturnBtonightBteamBtalksBspeciesBskepticBsadBrunBpositionBpaperBpBnovemberBlookingBlistenBionBindiaB
increasingBidiotBhateBgoneBgoesBgBexxonBexpectB	dangerousBcolemanBcatastrophicBblogB	australiaBagricultureBtravelsBtomorrowBtogetherBstrongBsocialBsaBroleBriskBresultBrelatedBpoliticiansBplaceBpastBopenBnameBmindBmeltingBmayorBjokeBincreaseBidiotsBheaBharveyBhappensBelseBdupedBcontinueB
conspiracyBcommonBcallingBargumentB
apparentlyBactivityBwinBwallBvotersBviewB
underwaterBtwitterBtemperaturesBstudiesBspendB	resourcesBpoveB
populationBnationsBmodelsBministerBlikelyBkillingBkBinventedB	interviewBhearBguysBfrontBfilmBfederalB	disastersBdeadBdavosBdamnBdailyBceBblamedBblackB
antarcticaByrsBwordsBweBvotedBukBtreesBtotalBtookBthoughBstormBsmhBsmaBskepticsBripB
republicanBproblemsBpeaceBopinionBoceanBnobodyBnationBmeetingBlibsBkilledBjobBimBhelloBhappyBgladBfundBexplainsBcreatingBchanceB	challengeBcampaignBbudgetBbrownBblamingByoungBworkingBtexasB
snowflakesBsetBsenseBseemsBschemeBscaryBreduceBracistB	questionsBprovenBprotestBproBnumberBlinkBlgbtBleastBkeyBjetsBinspirationBhalfBhaBgaveBdiesBdesignedBdebatesBdearBconservativeB	combatingBbunchBbringBbreakingBbbcBaffectByaBxBwentBwebsiteBwatchingB
washingtonBwarningBwakeBtradeBtempBtellingBsupposedBsummitBsouthBshuttingB	renewableBpushBpriorityBprettyBpplBpieceBperryBngBneededBmiddleBlowB
leadershipBlateBislamBinternationalBhysteriaBhighBhandsBgrowthBgivingBgirlBforceBfiresBfakBfacingBenB	educationBdecadesBcrimeB
completelyBcivilBchicagoBcarBcancelBbookBbasedB	attentionBattackBactionsBacceptBsteveBspringBsorryB	solutionsBsideBsendBseeingB	secretaryBschoolBresultsBratherBraceBpresidentialBpredictionsBpotusBpossibleBpageBomgBnormalBmoonB	manhattanBltBlmaoBlawBlandBladyBitBhotterBhitBgunBgovBgivesBfriendsBfrancisBfocusBfloodingBfalseBexactlyBersBeitherBdumbBdrBdisasterBdioxideBdemsBdefenseBcurrentBconsiderBconcernBconBchangingB	candidateBbroughtBbetBbearBaskingBaffectedBadministrationBadaptBwhatBtweetsBtrumpsBsurviveBspecialBsingleBsimpleBsettledBrunningBrickBreverseBreadingBrainBradicalBprimaryBnytBmoveBmeltBmarchBlongerBlivingBlineBlaBironyB
inequalityBimagineBignorantBhungerBhandBgunsBgrowingBgreaterBfuelsBfloodBfaB
extinctionBexceptBeventBendedBeasyBdontBdespiteBcouBcontributorBconservativesB	christmasB
challengesBcaughtBcanadaBbattleBbannonBanalysisBadmitsBabtBwroteBwishBwintersBwhateverBwhBweaponsBwanBusaBurgentBtreeB	tillersonBthreeBstormsBspeakBsnowingBsellBrichBrefugeesBredBrecentBrateBraiseB
productionBpointsBplanningBpaidBonesBnycBnoneBmotherBmorningBmentBloseBlosBlightBleoBlackBislamicB
interestedBimmigrationBhomeBhiBhelpingBgivenBgameBforestBforeignBfoBfamilyBexposedBelBdyingBdrivingB
discussionBdeathBcompleteBcommunitiesBchoiceBchildBcarsB
candidatesBbuyBburningBbrexitB	beautifulBanimalsBaiBadminB
addressingBadBaccountBaccordB	yesterdayBwordBwealthBwarnedBwantedB
vulnerableBusesB	thousandsBtellsBstrategyBstoriesBstepBstakeBspentBsorosBsimplyBshareBsecretBrisksB
ridiculousBrefusesBreasonsBraisingBputinBpreventBpoBplaneBperfectBperBpaymentsBparkBofficeBnonsenseB	narrativeBmuslimsBmuslimBmitigateBmelaniaB	meanwhileBlossBjusticeBjetBjerryBjBistBirmaBincomeBhuhBhrcBhonestBhigherB
healthcareBgroupBgeorgeB
generationBfunBforestsBfloodsBflatBfeetBfascistBexampleB	evolutionBeventsBeuBenjoyingBenjoyBeastBdirectlyBdemocratBdegreeBdangerBcontributingBbuyingBbushB	believingBanymoreBanimalBangBalongBagencyBafricaB
adaptationBworksBwomanBweekendBwaysBwaBunderstandingBtrulyBtriedBtrendBtiredBthoB
technologyBtechBtaBsystemBstuffBstraightBstoppingBspreadBspeakingBsouthernBsourceBsoundsBsocietyBsillyBsickBsexBsecondBseasonBscaredBsafetyBrussianBretweetBrestBresponseBreminderB	religiousBreformBrealizeBpushingB
propagandaBplantBpickB
personallyBpanelsBonlineBoftenBoffersBnutsBmovieBmoronsBmomentBminuteBmenBmadBleadsBlargeBknownBjanuaryBjamesBisntBislandBipccB	investorsBinterviewerBinterestBinsaneBinfoB
indigenousBinconvenientBholdBheatingBgroundBfuckedBforwardBfolksBfixedB	financialBfatherBfallBeverydayBemB	editorialBearlyBearlierBdropBdrivesB
discussingB
destroyingBdeseBdepaBdemandBdecisionBdecidedB	continuesB	communityBcollegeBclassBcenturyBcentralBcaresBcapsBbuildingBbreakBbrainBattacksBapaBanthropogenicBalarmistBalarmingBaheadBaffectsBadmitBweirdBwearingBwarmerBwalkBwageBvotingBviBunlessB
universityBtvBturningBtrudeauBtopicsBtheoriesBsuperBstudentsBstepsBstanceBsongBsnowedBslowBsitBsignsBseriesBsenatorBsawBrhetoricBrexBrespondsBrefuseBrefugeeBreadyB
protectionBprogramsBproduceBpresBpredictBpowerfulBpledgeBphonyBpentagonBpayingBpassBpakistanBoxfordBokayBofficialBnoticeBmoralBmissBmentionsB	mentionedBlocalBlistBlimitBletterBlectureBlargestBknewBkerryBjesusBiranBinternetB	influenceB	increasedB	includingBinchesB	imaginaryBignoringBhuBhottestB	hollywoodBgolfB
globalistsBfundsB	footprintBfeelingBfebruaryBfallingB
explainingBevilBelitistsB	effectiveB	differentB	developedB	destroyedBdeforestationBcuzBcutsB	currentlyBcoverBcouncilBconfusedBconflictB
commitmentBclaimingB
capitalismBcantBcameBblahBbeatBbanBalaskaBadvocateBactualBwritingBwingBwindBwhoseBwestBwelcomeBweeksBwarnsBvsBveganBusualBturnsBtuBtrustBtrillionB
transitionBtotallyBtimBthreatsBthoughtsBthatsBterrorBtedB	surprisedBsuingBsuggestsB	statementBspeaksBskyBsignedBseesBseemBsavedBroundB
resilienceBregulationsBrdBraisedBputtingB
protectingBproposesBpromoteBprogressivesBplzBplusBplayingBplayBplansBphotosBperhapsBopBoctoberBnopeBniggasBniBneitherBmsmBmonthsBmonthBmilitaryBmetBmerkelBmankindBlinkedBkochB	knowledgeBjunkBjuneB
installingBinformationBilBifBideasBhourBhighestB
greenhouseBgoalBglobeBgiantB
geographicBgagaBfundedBfuBfriendBfreezeBfrackingBfoxBfitBfinanceBfarmersBfanaticsBfakedBfailedBfactorBexB
everywhereBepisodeBendingBemailsBdoubtBdocBdirectB
differenceBdestroysBdemBdangersBdadBdaBcycleBcreditBcredibleBcreateBcoveredBcoralBcookedBconversationB	confirmedBconcernsBcomplexBcoastBclBcherryBccBcatastropheBcashBcancerBbrightBbodyBboardBblizzardBbeyondB	beginningB	awarenessBaprilBapplyB	antarcticBamazingBalarmismBacrossB
absolutelyBzeroByoByepByeaBworryingBwinningBvitalBurgencyBtweetedBturnedBtoxicBthreateningBthiBtenBteachingBtankBtalkedBsyrianBswitchBsurpriseB	sufferingBstaffB	sometimesB
skepticismBsixBshockingBsexualBsciencBsciBschoolsBroomBrobeBreturnBresourceBrequiresBremainB	regardingBracismBquiteBpushedBpullBprovingB
protestersB	promotingBprojectsBprojectBprogressB	professorBpricesBpressB
presidencyBprepareB	potentialBpoleBpauseBparentsBpapersBpanelBpacificBoonBoceansB	obviouslyBnobelBnightBmostlyBmoronBmodelBminBmidBmichaelBmessageBmassBmarksBmannBmajorityBmadnessBlosingBlondonBlogicBlightsBleftistsBlecturesBlanguageBlaborBkeepingBkaBjustifyBirelandB
investmentB
innovationBignoresBignoredB	hypocriteBhoweverBhidingBhernBheldBharderBguardianBgrowB
governanceB	globalistBgirlsBgermanyBgayBfrighteningBfiveBfictionBfavoriteBexplanationB	existenceB	everybodyBeuropeBequalityBebellBeatBeasierBdrivenBdramaticBdoubleBdirectorBdiabetesBdevastatingBdeniedB
delusionalBdeepB	debunkingBdebatingBcyclesBcuriousBcurbBcultBcrowdBcowsBcowBcopBcomplainingB	competitiBcompanyBcommentsBcollapseB
christiansBcharlesBchargeBchaBchBbringingBboyBborderBbogusBblowBbitchBbitBbasicBbaBawardBavoidBasksBareasBamountBallowedBaleBakaBainlyB
affordableBafByungByrByangBworriesB	wonderingB	wildfiresBwiBwhistleBweightBwarsBwarmistsBvoterBviolenceBvalueBuponBupdateBtropicalBtripBtriesBtranspoBtrBtomBthruB	terroristBtempsBswearB	survivingBsurveyBstudentBstrongerBstephensBstandsBspaceBsnowfallBsmallB	skepticalBsiteBshiBsettingBsenateBsellingBselfBseasonsBscotlandBsantaBsanBsafeBrussiansBrulesBrideBreviewedBreviewBresearchersBrelevantBrejectB	recognizeBrainingBracialBquickBprinceBprimeBpretendBpresentationB
predictionBpreachBprBpossiblyBplannedBpiersB	physicistBpenceBpatriotsBothersBopinionsB	officialsBnatBnamesBmyronBmovingBmovementBmodiBmodernBmoB
mitigationBminutesBminimumBmikeBmeteorologistBmeltedBmcmBmayorsBmarsBmarkBlotsBlordB	listeningBlimitingBliedBlegalBleftistBleftiesBledBleavingBlaughBkoBjoinedBislamistBironicBionsBintellectualB	instituteBinfrastructureBindependentB
incredibleBincludeBimagesBicebergBianB	hypocrisyBhquakesBhorrorBhitsBheroBhealthyBguardB	groundhogBgravityBgovernmentsBgoogleBforumBformBforcesBfocusedBflyBfishBfindsBfigureBfightsBfedBfaultBfarmingBfailureBfailsBfacesB	executiveBexcuseB	excellentBestBessayBeraBequalBentirelyBelitesBdudeBdriveBdrillingBdoomsdayBdogBdoesntBdoBdireB
depressionB
definitelyBdecideBdecemberBdecadeBdealingBdamageBcruzBcriminalBcorrectB	corporateBcooperationBconvinceBcontributesBconsequencesB
conclusionB	committeeBcloseBclimatBcliBclearlyBcitizensBchristBchelseaBcenterB	cancelledB	canadiansB
businessesBburnBbtwBbrokeBbritishB	brilliantBbriefingBbreitbaBboutBbornBblowsBbirdsBbenefitsBbelievedBbeesBbeefBbankBbabyBbabiesBawesomeB
atmosphereB
assessmentBasiaBarguingBappearsBanywayBanceBaloneBallowBafricanBadvanceBadaptingB	activistsBableBwtfBwriteB	worldwideBwinsBwastingBwantingBwaitingBvoiceBvisitBvaticanBtruBtreatyBtransBtrainBtowardsBtowardBtopicBtoolBtiesB
threatenedBthreatenBthereB
terroristsB	taxpayersBtaxpayerBsystemsBsyriaBsustainableBsuspectBsurvivalBsufferBsuddenB	stupidityBstudyingBspoBspeedBsoundBsonBsolvedBsoilB	socialistBsnowsBsirBsignificantBsiBshutsBshotBsevereB	screamingB	scenariosB
satellitesB
sandwichesBsadlyBruleBriverBridBresponsibilityBremovedBreleaseBrelationshipBreefBreducingBrecordsBrecallBquicklyBputsBprogressiveBprofBprocessBprizeBpresentBprayBpracticeBpopularBpolluterBpollBpledgesBplasticBplantsBplacesBpicksBphysicsBpetitionBperspectiveBpeoplBpaulBpatriotBpathB
parenthoodBpanicB	occurringBobviousBnegativeBnearlyBndBnaacpBmultipleBmpBmoroccoB	mongeringBmindsBmethaneBmentalBmemeBmembersBmeasuresB	marrakeshBmapBmaleBmailBlinesBlikedBlibeBletsBlearningBleBlakeBkoreaBkingBkindaBkimBkiddingBkickBkeepsBjiBivankaBirresponsibleBinvestBinducedB
impossibleBideologyBicebergsBhyBhoustonBhonestlyBholeB
historicalB
highlightsB
hemisphereBhelpsBhatesBhaltB	halloweenB
greenpeaceBgraphBgeoBgarbageBgapBgamesBftBfrenchBfreakingBfourBforecastBforcedBflyingBfineBfieldBfemaleBfeelsBfastBfailB	extremelyBextraB
experienceB	expensiveBexistentialBenvironmentalistsBentersBendlessB
ecosystemsB	economicsBdustBdupBdumpBdumbestBdumbassBdriverBdrinkBdoomBdonatedBdoeBdisputeBdismissB
discoveredB
disastrousBdisagreeBdestructionB	denialistBdefendBdeadlyBdavidBdateBdamagesBcultureBculpritBcropBcracksBcoversBcounterBcostsBcoreBcontrolsBcontributionBcontextBconsideringBconfrontB
conditionsBcomputerBcomprehensiveBcomparedBcommitmentsB
commissionB
commentaryBclosingBclickBcitedBcheckedBcheBchanBcatchBcableBbusyBbrianBbretBboughtBbostonBbordersBblowerBbloodyBblockBbleachedBbiasBbenefitBbenBbeerBbecomingBbecameBbbhB	basicallyBbarrierBbamaBbackedBauthorBareaBapproachBanybodyBanswersB	announcedBanemonesBamongBalthoughBalternativeBaltBaliveBalbeBagriculturalBagBafraidBaffordBaddBactorsBactingB	acceptingBacBabcBzealandByoutubeByouBwuwtBwrittenBworldsBworkedB	wonderfulBwokeB
withdrawalBwitchBwipedBwhistleblowerBwhiningBwesternBweathBwearBwastedBwarnBwarmthBvoxBvictoryBviceBvanBvaccinesButamaBupsetBunityBunemploymentBtypeBtweetingBtroubleBtreatBtourBtornadoBtoBthreadBthisBtheresaB
terrifyingBsuvBsurelyBsupposeBsundayBsucksBsubjectBstunningBstuckBstreetsBstoringBstephenBstelterBstatedBstarBstandardB	spreadingBsomehowBsomebodyB	snowstormBskinBsittingBsinkingBsincBsilverBsiberiaBshownBshowingBshootingBshipBshamBselectedBsecBscientificallyBscareBscandalBscaleBsandwichBsakeBsaharaBruiningBrootBrevealsBrevealedBrespondB
rememberedBrejectsB
regulationB
regardlessB
referencesBredistributionBrecordedBreactionBreachBrawBpureBprovideBproudB
protestingB	prosecuteBpropoBprofitBpriceBpressureBposesBpopulationsBpoliceBpolesBpocketsBplentyB
plantationBpissedBphraseBpenyebabBpatternBparksBpagesBozoneBownsB	overnightBorleansBoppositeBopposingB	opponentsBoppoBopeningBolympicsB
officiallyBofferBobamasBnyBnraBnoBniggaBnetworkBnetBnearBneBnbcBnavyBmorganBmomBminusB	minnesotaBminingBmexicoBmessBmemberBmeetingsBmattersBmarBmapsBmantraBmaldivesBmagicB	louisianaBloadBlinksBliningBlibBliarsBlawsBlaterBkungBkidBkentutBjudgeBjournalistsBjohnsonBjailB
irrelevantBinvolvedB	investingB	inventionB
inevitableBinactionB
immigrantsBhundredBhsBhowBhostBhorribleBhintBhideBhelpedBheadsBhatBharryBharmBhabitatBguideB	greenlandBgradeBgovernorBgoalsBglaciersB	geographyBgeneralBgatesBfrozenBfrankenB	franciscoBfossiBformerBforgotBfoolsBfoolB	followingBflowBfloodedBflintBfliesBflBfinalBfeelingsBfearsBfavorBfasterBfascinatingBfarceBfantasyBfakingBfairBfailingBfactualBeyesBeyeBextremesBexposesB
expeditionBexoBexitBetB	essentialB
especiallyBenglandBengineeringB
encyclicalBemojiBelectricityBehBdryBdroppedBdistractBdiseasesBdiseaseBdisabledB	dinosaursBdevelopmentB
developingBdeservesB
describingB	describesBdescribeBdeliverBdeletedBdelB
definitionBdeclineBdeclaredBdebunksBdebunkedBdebtBdcBdarkBdariBdangBdakotaBcuttingBcuredBcureBcrooksBcreditsBcoverageB
corruptionBcorruptBcorrelationB
convincingBcontributionsBcontrastBconditioningB
combattingBcomBcoloradoBcolderBcoffeeBcodeB	coalitionBcloudsBcleverBchooseB	checkmateBchairB	centuriesBcentreBcatholicBcanadianBcanBcalmBbrusselsBboysBbottlesBbombsBbillionaireBbiasedBbiBbehaviorBbeginsBbeginBbeachBbarelyBbanningBballBawaitsBaverageB	attackingBaspectBarmyBarB
approachesBappleBannualBangelesBangelaBancientBamazonBaliensBaintyBahBagreedB	advocatesBadministratorBadaniBactorBacknowledgeBaccessBabouBzoneBzealotsByouthByieldsByadaBworkersBworBwinnerBwildBwhenB
whatsoeverBwebBweakBwaveBwatchedBwashedBvotBvolcanicBvictimsBverifiedBvaluesBusuallyBuselessBupdatedBunusualBuniverseBunfollowBumBuhBughBualBtwiceBturnbullBtuckerBtrollsBtrickBtrendsBtreatingBtravelBtransgenderBtownBtoughBtonyBtonsBtobaccoBtitanicBtipsBtinyBthtBthrowB	threatensBthinkerBthaBtfwBterribleBtellerBtearsBteacherBteachBtaxingBtaughtBtalagaBtacklesBtableBswindleBsupremeBsugarBstyleBstreamB
strategiesBsteinBstayB	stabilityBsprayingBsourcesB	somewhereBsolvingBsoB	snowflakeBsmokingBsmashBslowingB	slaughterBsinkBsimilarBsierraBshoreBshockedBshippingBshiftBsharingBsexistBseveralBsequelBsentBsendingBselfishBseekingBsecureBseasBseBscreamBscenarioBsavingB	satelliteBsandBsallyBrunawayBruinedBrubioBrubbishBrollingBrnB	retweetedBretreatB
respondingBrespectBresistB	resilientBresearchingBrequestBreplacedBremoveBregulateBregsBregimeBrefutingBrefusedBreefsBrecentlyB	realitiesBreaganBreachingBrallyBrainfallBradioBquoteB
questionedBpullingBpseudoscienceBprovidesB	proposalsBpromisedBpromiseBprogramBprofessionalB
prioritiesBpreviousBpretendsB
pretendingBpreachesBpotatoBposterBpositiveBpornBpopBpoorestBpollsBpoliticallyBpolBplugBplsBplotBplaysBplanetsBplBpitbullBpipelineBpictureBpicBphotoBphilippinesBpersonalBpeerBpaysBpatternsB
parliamentBpaceBoverpopulationBouttaBoutrageBoopsBohioBoddsB	obamacareBnzBnytimesBnovelBnoticedBnomineeBnetflixB	naturallyBnahBmythsBmuskBmurphyB	murderingBmtBmpsBmovesBmonsterBmondayBmodeBmockBmissingBmissesBmissedB
misogynistB
misleadingBministryBminiBmindedBmilkBmiamiBmiBmexicanBmessingB
mentioningBmemesBmeltdownBmeetsBmccaBmaxBmatthewBmalB
mainstreamBmacronBluckBlovingBlovesBlooseBloBlivedBlilBlikBlifetimeBlibtardsBliBlgbtqBlettingBlegitB	lecturingBleavesBlearnedBlawsonB	lawmakersBlaughsBlaughingBlargelyBlandingBlakesBkillsBkillerBkiBkenyaBkarenaBjustB
journalismBjournalBjoeBjimBjillBjerseyBjanBituBistanbulBissuBisBirreversibleBinventBinvasionBinteriorB	interestsBinterBintelligentB	insuranceB	injusticeB
initiativeBinformedB	indonesiaBindianB	increasesBimplodBimplicationsBimageBillegalBicymiBicularlyBiclesBhumanitarianBhotspotBhopingBhopesBhonorBhomesB	holocaustBhoBhireBhighlyBhewanBheavyBheadlineBheadingBhavocBhairBhackBgroupsBgraphicBgrantsBgrantBgrandBgrabBgloBglassBgenerationsB
generatingB	generallyBgendersBgainBfyiBfueledB	frontlineBfridayBfreedomB	frederickBfoundedBfootB	followersBfnBflowersBfloorB	flashbackBflagBfinishBfiddledB	fictionalBfewerBfestivalBfellBfavourBfateBfatBfashionBfansBfamineBfalselyBfallsBfaithBextinctBexploresB	explainedB	expansionB	exclusiveBexaggeratedBexacerbatedBestablishmentBestablishedBesBenglishBendsB
endangeredBemailBeliteBelectricB	electionsBegyptBedgeBdropsBdrinkingBdoublingBdoorBdoomedBdonBdollarBdncB
disruptionBdisproveBdisplacementBdismantlingB	discussedBdisBdiedBdevotedBdevelopBdestructiveBdesignBdepthBdeptBdenverBdemandsBdeliversB
delingpoleBdeleteBdefineBdecreaseBdeclaresB	decisionsBdecBdebunkBdealsBdatBdahBcyclicalBcroniesBcriticalBcrimesBcozyBcountyBcorporationsBcoolerBcookingB	convincedBconversationsBcontestB	confrontsB
confrontedB	conflictsBconfirmationB
concerningB	communistBcomfoBcombinedBcoldestB	cognitiveBclothingBclosedBclimaBchurchBchrisBcheeseBchecksBchatBceoB
censorshipB	celebrityBcelebritiesBcatBcarsonBcaliBburnsBburnedBburiedBbrutalBbrothersBbringsBbotherBbombBboardsBbnBblindBbisaBbiodiversityBbillsBbigotedBbibleB	believersBbeliefBbeatingBbalanceBayeBawareBaveB
australianB
astoundingBassumeBassesBasBarmsBarmedBarizonaB	argumentsBargueB
appreciateB	appointedBappB	apologizeBapocalypticBanxietyBangerBamnestyB	ambitiousBaltarBalbumBairpoBaintBagwBagesBagenciesBaffairsBaerosolBadvisorBadultsB	addressesBaddedBaccordsB	academicsBabsurdBabruptBabbottBzinkeBzeeByanByaleBwsBwreckedBwreakB	worseningBworsBwipeB	windmillsBwillingBwildlifeBwilB	wikileaksBwifeBwhyB
whitehouseBwheelsBwhatsBwhalesBweighBwefBweedBwealthyBwavesBwatBwashingBwarningsBwarmiBwardBwallaceBwalkingBwalaBwagesBvoodooB	volcanoesBvolBvoicesBvirusBviolentBvideosBvidBvichitBveteransBverifyBvergeB
variationsBvalleyBvalidBvaBurgesBurgeBureBupsBunstoppableB	unrelatedBunpredictableBunprecedentedBunlikeB	universalBuniteBuniqueBunionsBunionBuneB
understoodBunderstandsBunceBunbornBunatelyBudaraBuallyBtypicalBtrynaBtruthsBtrustedBtripledB	trillionsB	travelingBtrappedBtransferBtrainingBtradingBtractionBtotalitarianB	tornadoesBtoothBtoneBtollBtoddBtitleBtippingB	timelapseBtillBtiedBtidakBthusBthursdayB
throughoutBthreBthrBthirdBthinkersBtheyreB	thereforeBthemeBtheiBthatcherBthatBtestBteslaB	terrifiedBtermsBtermasukB	televisedBteaBtaylorBtaxationBtarBtaoB	tamperingBtaiwanBtagBswingsBswiftBswedenBsuvsBsustainabilityBsuspectsBsupremacistB
supposedlyBsupplyBsummaryBsuggestBsueBsuddenlyBsuB
strugglingBstruggleBstrikingBstrikesBstreetB	streamingBstoreBstorageBstopsBstoleBstickBsteepBstatBstarkB	standardsBstainBstafferBspotsBspotB	sponsoredBspokeBspencerBspellsBspeechesBspecificallyBspBsoyBsoilsB	socialismBsnakeBsmogBsmileBsmallerBslamsBslammedBskateBsizeB	situationBsinBsilentBsightedBsidesBshovelBshoutoutBshotsBshockBshittyBshiftingBshellBshamelesslyBshamefulBshameBshadowBsessionBsensibleBsenatorsBsemuaBseeksBsectorBsearchBseanBscrewBscrapsBscifiBsciencesBscienBscepticsBscepticBsceneBscarierBscaremongeringBscamsBsayoBsaturdayBsapiBsaneBsaladBroweBrollsBrollBrockBrobotsBroadB
revolutionBreversedBrestoreBrestorationB	responsesB	respondedB
resistanceB	requiringBrequireBrepeatBrepB
renewablesBrelyBreleasedBrelaxBrelatingBreindeerBregionsBregionB	reductionBrecklessB	receivingBreceivedBreceiveB	rebrandedBrebrandB	realisticBreadersB	rationaleBratifiedBrapidlyBrapidBrangeBrandomBrampB	ramaphosaBraisesB
rainforestBrailBquizBquietlyBquestioningBqualityB	qualifiedB	publishedBpublishB
psychologyBpsBprovedBprotectionismBpromisesBprofoundBprofitsB
profitableBprofileBproductsBproducesBprisonBpriorB	primarilyBpressingB
presidenteBpreparedBpremiersBpredictableB	predatorsBprayersBprayerBpoweredBpotBpostsB	positionsBposeBpoopB	pollutersB	poisoningBpointingBpoemBpodcastBployBplaylistBplayedBplatformBplantedBplanesBplaBphoneBphoenixBphdBpetsB
pesticidesBperilBperformanceB	perfectlyB
perceptionBpercentBpeoplesBpenguinsBpelosiBpeekBpeddlingBpeBpatiBpatheticBpassedBpariahBparentBparadiseBpanasBpactB
outrageousBoughtB	otherwiseBorlandoBordersBorangeB
optimisticBoptimismBoonsBontarioBongoingBonBolBoiBohhhBoffshoreBoccursB
occurrenceBoccurBobesityBnutBnumbersBnukeBnovBnotesBnotedBnoteBnoseBnorwayBnoonBnjBnigeriaBnhsBnflB	newspaperBnersBnerdsBneighborhoodsBnegotiationsBncBnatoBnativeBnaiveBnaikBmusicalBmusicBmurderBmulvaneyBmultiBmovedBmoderateBmockingB
mitigatingBmisunderstandBmissionBmisinformationBminersBminderBmillennialsBmilBmichiganBmerusakBmerekaBmengeluarkanBmemoryBmeltsBmedBmeantBmeaningBmateBmatchBmassesBmarketBmarioBmariaBmargaretBmarcoBmanufacturedBmanagersBmanagerBmanagedBmanageBmalcolmBmagBlyBluxuryBlunchBlunaticsBloversBloudB	lobbyistsBlobbyBloansBlnpBlimitsBlimitedBlegislationBlegacyBleakedBlayerBlawsuitBlaudatoB
landscapesBlandsBlagoBkyotoBkohnBknowingBkitaBkissBkindergaBkevinBkeptBkeBkatrinaB
kardashianBkaineBjudithBjrBjournosBjongBjonasBjokingBjoiningBjohnnyBjewsBjeBjaredBjapanBjacketBjaBisraelBislandsBisanBirrefutableBirishBiranianBinvestmentsBinvestigationBintroBinterventionB	intensityBintenseB	inspiringBinsightsBinsensitiveB
innovativeBinnocentBinitiativesB	initiatedB
industrialBindusBindeedBincompetentBincomingBincomesBincludesBincludedBinB	implementB	impactingBimpactedBimminentB
illiterateBiiiB	ignoranceBiesBidkBidioticBidentifyBhypeBhuntBhumidBhoursBhostsBhookBholidayBholdsBhocBhmmmBhistoricBhiringBhiredB	hilariousBhighlightingBhidBheresyBhelB	heatwavesBhearingB	headlinesBhatredBhansenBhahaBguruBgullibleBgulfBguiseBgrizzlyBgriefBgreensBgreenerBgravyBgraderBgottenBgoldBglobalizationBglBgifBgiantsBgeoengineeringBgenerateBgeeBgaysBgavinBgasketBgasesBfuturBfucksBfuckeryB
frydenbergBfrmB
frightenedBfreakB	frameworkBfrB
foundationBforeverBforcingBforBfooledBfocusingBflawedB
flatulenceBfiorinaBfinnishBfingersBfilmsBfiguresBffsBfellowBfeedBfeaturedBfearedBfbiBfauxBfascismBfarmBfanaBfanBfamiliarBfamBfalloutBfactorsB
extremistsBexploreBexperiencingBexperiencedB	expectingBexpectedB
expectancyB	expandingBexistentBexecBexcitedB	exceptionBexamplesBevolvingB
eventuallyBeveningBeuropeanBessaysBespB	eruptionsBerrorB
equivalentBequivalenceBequityBequalsBepBenvironmentalistBenvdefensefundBensureBengageB	employeesB	emotionalB	embracingBelonBeliminatingB	eliminateBedlyBeditorB
ecologicalBeclipseBeasilyBeasiestBeaglesBdumpingBdummyBduhBdudesBdryingBdrunkBdrugsBdrowningBdroughtsBdroneBdrawBdrainingBdragBdraftBdoubtsBdominantBdomesticBdogsBdogmaBdoctrineBdocsB	diversityBdiverseBdistractionB
dissonanceBdispropoB
dismantlesB
dishonestyB	dishonestBdisgraceB	disappearB	difficultBdietsBdictateBdgBdeviceB	desperateBderangedBdependsBdentBdenganBdenB
democraticBdeletingB
delegationBdelayedBdelayBdegradationBdeficitBdefeatBdebatedBdeathsBdaughterBdarnBdareBdanceBdanBdampakBdamnedBdamBdahilBcycloneBcuteB
curriculumBcultistsBcubsBcubaBcryingBcryBcrushingBcrusadeBcrossBcridBcredibilityBcreatorBcreatesBcreamBcrashingBcrashBcoveringBcoupleBcountB	correctlyBcorbynBcoralsBcontroversialB
controlledBcontroBcontraryB
continuingB	continentBconsumerB	constructBconnectionsB
connectionB	connectedBcongratsB	confusionBconfirmB
confidenceBconfBconditionersB	condemnedBconcreteB	concludesBcommunicatingB
committingB	committedBcomicsBcolumnBcoatBcoastalBcluelessBclownsBclownBcloudBclothesBclipBclimBclaimedB	christianBchomskyBchillingBchickenB
chemtrailsBcheaperBchargesB	characterBchainBceosBcelebsB	celebrateBcattleBcarryBcarpetBcarneyB	caribbeanBcaptureBcaptainBcapitalBcapacityBcampusBcampBcallerBcalBbyBbuttBbusBburyBbureaucratsBbulletinBbukuBbrotherBbrosBbroBbritainBbriefBbridgeBbreaksBbrandBbrainwashedBbraceBbowBboostBboomBbonnBbondsBbondBboldBbodiesBblueB	bloombergBblastsBblasioBbitesBbiologyBbigotryBbetweBbeltBbelievBbeliefsBbeijingBbegunBbeganBbedBbecomesBbeatsBbbcnewsBbasesBbarackBbarBbansBbangBbaldBbaeB	backwardsBbackingBayBawkwardBaviationB	availableB	authorityBattemptBattBatomicBatlanticBatlantaBatheistsBassessBassaultBaspectsBasideBashBasapBarriveBarrestBarrangementsBapologyBangryBamidB	amendmentB	alternateBallowingBallianceBalienBalgoreBalarmBakibatBaimedBaidBahhhBagsBagreesB	affectingBadviserBadsBadoptBadmittedBadjustBaddingBactivistB
accomplishBacceptedBacceleratingBacademicBabstractBabandonBabBzooBzoeBzijnBzealotBzamanBzachByoutubByoureByoungestByoungerByeloByellsByearlyByeByayByawnByachtBxiB
xenophobicBwyoBwwfBwutBwthBwsjBwritersBwriterBwreckingBwreakingBwpBwouldaBworshipsBwoopBwoollyBwoodBwonderedBwithinBwithdrawBwitchesBwishesBwiseB	wisconsinBwiredBwipesBwinnersBwineBwindowsB
windmolensBwilliamBwidelyBwideBwickedBwhoeverBwhoaBwhinesBwhinersBwhilstBwhidbeyBwhaleBwhaBwetlandsBwelfareBwedBweaponBwayneBwatersBwateredBwashBwarriorsBwarmistBwarminBwalksBwalesBwalangBwakyBwakoBwakingBwaitedBwailingBwackyBvwBvpBvolcanosBvodkaBvisitingBvisionBvisibleB
violationsBvinnyBviewersBvictimBvehicleB
vegetationBvegansBveelBvariousB	variablesB	valentineBvaginasB
vacillatedBvaccineBvacationBuvButterBusfaBusersBusefulBurgentlyBurbanBupdatingBupcomingB
unyieldingB
unwaveringBunseasonablyBunrestBunprovenB
unpreparedB	unlimitedBunicornBunfoB
unexpectedBundoubtedlyBundoneBundoB
underscoreB
underlyingBundB	uncheckedBunbelievableBunawareBunableBunaBummmBummBultimateBuglyBuaeBtylerBtyBtxBtwitBtwistBtwewBtwelveBturbinesBtuitionBtrutBtrumpedBtruckB	troublingBtrollBtrojanBtriggerBtricksBtrialBtrendingBtreasonB	translateBtransitBtransiBtrainedBtrailsBtragicBtragedyBtraffickingBtrafficBtrackerBtppBtoyBtownsBtouchyBtouchBtoryBtonnesBtoiletBtipBtimelineBtightBtieBtideBtickBthxBthrowsBthroatsBthroatBthrivingBthreadsBthreaBthousandBthomasBthinBtheyB
thermostatBtheoBtheblazeBtfBtextBtestingBterBtensB	tennesseeBtendBtempoBteenB	techniqueBtechnicallyB	technicalBtearBteamsBteachesBteachersBteBtbhBtayoBtastesBtargetsBtaposBtapesBtanBtamperBtakenBtakBtaehyungBtadBtBsymptomsBsydneyBsycophantismBswitzerlandBswissBswirlingBswayBswampBswallowBsustainablyBsussidiB
suspiciousBsurvivedBsurveillanceBsurprisinglyB	surpassedBsurgeBsuppressBsuperstitionBsunshineBsunsBsunnyBsundanceBsumnBsummersBsumBsuitB
suggestionB	suggestedBsuffersBsuesBsuckersBsuccessBsuburbB	subsidiesBsubjectsB	stylebookBstrokeBstripsBstripBstrikeB
strategistB	strategicBstifleBstfuBsternBsteeringBsteerBsteelBstealingBstealBstatusBstatsBstationBstatingBstarvingBstarsBstandingBstampsBstagnantBstageBstaffersBstadiumBstableBssBsquirrelBspoutedB	spotlightBspoilerBspoiledB	spiritualBspinsBspinBspillsBspellBspatialBsparkedBspankedBspanishBsovietBsoundingBsotuBsosBsoooBsoonerBsonsBsonoBsongsBsometimeBsolvesBsolidBsolelyBsoleBsoldBsolBsodaBsobrangBsnowyB
snowstormsBsnlBsnapsBsmithBsmashesBslowlyBslightlyBslightBsleepingBsleepBskippingBskilledBskiingBskBsisBsinglehandedlyB	sincerelyBsimulationsBsilenceBsilaBsigningB	signatureBsignalBsighBsiberianBshrunkBshowersBshoveBshoutsBshoutingBshoutBshootBshinesBshilpaBshiftsBshesBsheetBshakyBshadeBsexismBsevenBsettlesBsetsBsessionsBservingBserviceBserveBservantBseriousnessB	septemberBseparateB	senselessBseniorBsenBseminarBsellersBsekarangBseekBseedBsectionBsecsBsecondsBsebagaiBseattleBseatbeltBseatBsealBsdB	sculptureBscriptsBscrewedBscrapeBscourgeBscoreB	scorchingBscientifBscieBschwarzeneggerBschooledBscaresB	scapegoatBsavageB	sarcasticBsarahBsandyBsandsB	sanctionsBsamBsaltBsalesB	sacrificeBrussiBrushBrumoredBrulingBruinBrowBrosesBronaldBronBrogueBrocketsBrockefellerB
rockabillyBrobinsonBroadsBrioBringBrihannaBriffBridleyBridingBridesBriddanceBricherBrichardBriBrevealBreusableB	returningBreturnedBrestrictionsB	restoringBrestateBresoB
resiliencyB	resigningB
researcherBrequestsBrepubsBreproductiveB
representsB	representBreprehensibleB	replacingBreplaceB
repeatedlyBrentBrenownedBrenewedBrenderBremovingBremoteB
remarkableBremainsB	remainingB	reliefwebBrelationshipsB	relationsBrelationBreinB
regulatoryBregularB
regressiveBregistrationBregionalBrefusingBreflectB	referringB	referenceBreducedBredistributeB	recyclingBrecycleBrecoveryB
reconsiderB
recommendsB
recognizesBreckonB
recessionsB	recessionBrebelB	reasoningBrealizedBrealiseBreadsB	reactionsBreachedBrationalBratingsBratesBrareBrapedBrapBrantBrankedB
rangelandsBrampantBrahmBragingB	radiationBracketBquantumBqaedaBpuzzleBpussyBpushesBpurposeBpurelyBpurbaB
punishmentBpunchBpullsBpueBpubliclyB	provokingB	provisionBprovinceBprovB	prospectsBprosecutingBproposalB
proponentsBproperBpropeBpropagatingBpromotesBpromotedB	prominentBprojectionsB
professorsB	producingB
proclaimedBprobBprioritizedB
prioritizeB	principleBprimaBpriestBpricingB
preventingB
presidentsB
preservingBpreserveBpreservationBpresentsBpreparesBpremierBpredictsBpredB	preciselyBprayingBpraisingBpraisesB	practicesBpotentiallyBpostingBpostedBpossibilityB	pollutingBpolluteB
pollutantsBpollsterBpollingBpoliticizedB
politicizeBpolitB	policemanBpoisonBpocBpmbBpleasedBpleaBplannersB	planetaryBplagueB
pittsburghBpinagBpilesBpileBpikaBpiecesBpieBpickedB
physicistsBphysicalBphillyB
phenomenonBphdsB	petroleumBpetrolBpetBperuvianBpersuadeBperspectivesB
persistentBpersBperpetuatedB	perpetualBperpetratedB	permanentB
permafrostBperiodBpeopBpensionsBpensionBpennBpengBpeakBpeachBpayersBpayerBpatriciaB	patriarchBpassingB	paradoxesBparaBpantsBpangBpanelistBpanBpalinBpalestiniansBpalaceBpakyBpakBoyBownerBoverwhelmingBoverseasB
overlookedBovercomeBoveBoutsiderBoutlinesBoutdatedBourBottawaBotohBoscarBosBoriginalBorigBorgsBorganizationsBorganizationBorgBorderingBorderedBordBoptionsBoptionalBoptionB
oppressionB
oppositionBopposeBontoB	oligarchsBolderBoklahomaBofferedBoecdBoddBoccuringBobliteratedB	objectiveBoaklandBnuttersB	nutritionB	numinipisBnukesBnudeBnsidcBnowadaysBnotionBnothiBnotableB	norwegianBnonexistentBnoamBnineBnicelyBneyB
newspapersBnewmanBnewestBnetworksBnetherlandsBnestBnerveBnershipsBnerdB
negativityBnegateBnegaraB	necessaryBnecessarilyBnebraskaBnazisB	naysayersBnaturBnarendraBnangangayayatBnancyBnamjoonBnamingBnakakatakotBnailedBnailBmutantBmuseumB	murderersBmurderedBmuralBmundoB
multiplierBmugglesBmudBmsnbcBmoviesBmouthBmotionBmorrisonBmorBmoneBmonarchyBmomentumB	modellingBmockedBmobileBmobilBmobBmixedBmitBmistakeBmissilesB
mishandledBmiraclesBminsterB	minisculeBminesBmineBmindlessBmimicBmillionairesBmilliB
millenniumBmilitantBmilanB	migrationBmigrateBmidwestBmethodBmeteorologistsBmessagesBmercuryBmeltiBmeinBmegaBmedicareBmeasurementsBmeasureBmcmurrayBmauriceBmattisBmattBmathematicalBmaterialBmasturbationBmasterBmassacreBmashableBmaryBmarxistBmarxismBmarvelBmarriedBmarriageBmarineBmarchersBmarchedBmantleBmanipulationBmanipulatingB
manipulateB	manifestoBmanagingB
managementBmamaBmalnutritionBmalleyBmalesB	malandingBmakersBmakBmainlyBmaineBmaherBmagnetzBmagazineBmagaBmacroBmachineBlungsBlowkeyBloweringBlowerBlovelyBlovedBlovBlousyBlossesBlooolBloomsBlongestB	londonersBlohBlogicalBlobbyistBloadsBloadedBlngBlivestreamingBlivB
litigationBlistenedBlistedBlisaBlipBlionsBlinkingBlikingB	lifestyleBlibyaB
liberalismBliberaBliamBlessonsBlesBlensBlenaBleftwingBlecturedBlebronBlearntBlbsBlavaBlaureateB	laughableBlastingBlangBlandmarkBlancetBlameBlainBksooBksaBkpBkooksBknifeBkkkBkiribatiBkicksBkateB	kasalananBjwBjustinBjupiterBjuniorBjungkookBjudgesB
journalistBjoshBjokesBjoinsBjoBjkBjewishBjeanBjaehwanBjadeBjackBitsBitemBistsB	isolationBislamaphobiaBisansB
irrationalBirlBiqBionatelyBinvolveBinviteBinvestigateBinvestedBintimidationBintergovernmentalB	interfereBinteractiveBintendBinstitutionsB	instantlyBinstallationBinspiresBinspireBinsistBinsightB
insecurityBinsectsBinseBinnovationsBinnerBinitBiniBinhofeBinfluentialBinequalitiesB
individualB
indicationBindependBindefensibleBincorporateBincomB	inclusiveBinchBincBinaugurationB	improvingBimproveB	impressedB
imperativeBimoBimmuneBimmediatelyBimfBimeBimaBillustratesB
illuminatiBikonicsBikonBikBiiB
identifiesBidcBidahoB	icipationBicipateBicingBicecapsBicebreakersBicBiamsB
hypothesisBhypocriticalBhurricanBhurrahBhungryBhundredsBhumbleBhumaneBhumBhugginBhrBhousingBhousesBhousBhostingBhostileBhorseBhorrificBhorizonBhoodBhonoredBhonestyB
homophobicB	homophobeBhomelessBholyB
holoscenesBholomewBhollandBholesBhodoxyBhodoxBhockeyBhoaxerBhippieBhillsB	hijackersB	highlightBhetBhesBherdBhellerBheedBheavilyBheavenBheatedBheadedBhdBhawkingBhawaiiBhaveBhatingBhatersBharvardBharusBharshBharrisBharperBharmingBharmfulBhardestB
harassmentBharamBhappBhandleBhandingBhammeredBhamiltonB	hairsprayBhainBhailedBhaiBhahahahaBhahahahBhahahaBhacksBhackingB	habitableBgwBguiltBguestB	guaranteeBguamB
groundlessBgrimBgreeniesBgraveBgrassBgraspBgraphicsBgrantedBgradesBgrabbingBgrBgoveBgospelBgoodnessBgoodbyeBgooBgoldenBgmosBglugBgloballyB	globalismBglobaBglimpseBglacierBgiftBghwBgermanBgeorgiaB	genuinelyBgeniusB	generatorB	generatedBgenBgdpB	gatheringBgatewayBgassesBgaryBgaliciaBgainingBgaBfussBfusionBfurBfunniestBfundamentallyBfullyBfuckersBfrozeBfrogBfroBfriendlyBfriedmanBfriBfreshBfrequentBfreakinB
fraudulentBfranceBframingBfoxnewsBfouBformedBforecastersBforbidBforbesBfootageBfondlyBfoldBfocusesBfluidBfloatingBflightBfleeceBflavorBflashBfixingBfishingBfisherBfirmsBfiredBfinishedBfinestBfindingsBfindingB	financingBfinBfilledBfiledBfigBfictionsBfestBfeministBfemalesBfeltBfeedbackB
federalistBfebB	featuringBfeatureBfeBfdrBfckinBfbBfavBfarmerB	fantasticBfanningBfamousBfaminesBfamiliesB	falteringBfallenBfakesBfairyBfadBfacebookBfacBfabulousB
fabricatedB	eyelashesBeyebrowsB
exxonmobilB	extremismB
extractingBextentBexpressionsBexposureBexposeB	explosiveBexplorationB	explodingB	explainerBexperimentalB
experimentBexpBexecsBexcusesBexcessBexactB
exacerbateB	evidentlyBeveBevBethicsB	establishBespinosaBescoBericBerasingBequatingBepicBeoBenvironmentalismBenvBenthusiasticBenteB	enrichingBengagedBenemyBendorsedB	endeavourB	endangersB
encouragesBenactBemptyBemployerB	empiricalBemphasisBemitBemissionB	emergencyBemergedBembraceBembarrassmentBemanuelBeloquentBelitistBelevenBelectingBehhhB	effectingBedwardBeducatedB
editorialsB	edinburghB	ecosystemB	ecologistBecoBebbBeasternBdyanBdutyBdutiesBdutchBdustingBdumpedBdroveBdroppingBdrivewayBdriversBdriftingBdriedBdreamsBdreamBdrawsBdrawingBdramaBdragonsBdozensBdownplayBdoubledBdopesBdonnieBdonnaBdocumentBdnaBdiyaBdiwaliBdiveBditchBdistributionBdistoB
dissentersBdissectsBdisputedB	disprovenBdisplayBdispatchBdisneyB	dismantleB
disgustingBdiscussionsB	discussesB	discreditBdiscoverBdiscloseBdisappointedBdisappearingBdisagreementB	directionBdirectedB
dinosaurusBdinnerBdinginBdinBdilbeBdigBdifferentlyBdifferBdiffBdietBdieselBdidntB
dictionaryB	dictatorsBdickBdialsBdevosBdevelopmentsBdevastationBdeterminingB	determineBdeterioratingBdestinyBdespairBdeserveBderBdeputyB	depletionB	dependentBdepBdenseB	denouncesBdenounceBdenmarkBdenisB	denialismBdeniBdemonstrateBdemolishingB	democracyB	demandingBdeliberatelyB	defundingB	decreasesB	decliningB	declaringB	deceitfulBdebbieB	debatableBdeadlineBdaveBdanaBdamagedBdalaBdairyBczarBcurBculturalBcuiBcrushBcrueltyBcrucialBcrowdsBcriticsB	criticismBcrisesB	cripplingB	criminalsBcricketBcreationistsBcreationBcrazedB	crackpotsBcrBcountingBcounselBcottonBcostlyBcostingBcosBcorrectnessBcorpBcornerBcopyBcopeBcookB
conventionBcontributorsBcontributedBcontinuallyBcontentBcontemptBcontainsBcontBconsumptionBconstitutionalB
constantlyBconspiraciesB
consistentB
consideredBconservationBconsequenceBcongressmanBcongressionalB	confusingBconfuseB
conflatingBconfirmsB	confidentBcondolencesBconditionerBconditionedBcondemnsBcondemnB	concludedBconceptsB
conceptionBconcentrationsB
compromiseBcompetitivenessBcompetitionB
compellingB
comparisonBcommitBcommentB	commanderBcomedyBcolorsBcolorBcolonialismBcolombiaB
collectiveB
collectingB
colleaguesBcolBcoffinBcoatsBcmBclueBcloselyBclooneyBclockBclimatologistBclimatesBcliffBclearerBcleaningBclassicBclarifyBcivilizationBcitizenBcitingBcirrusBcircleB
cigarettesBchuckBchristopherBchoosesBchoicesB	chocolateBchillyBchillBchiBchevronBcheetosBcheersBcheeredBcheckingBcheapBchbageBchattanoogaBcharmingB
charlatansBcharityBcharcoalBcharadeBchapterBchampionBchallengingBchairsBchadBcernBceremonyB	centristsB
centralizeBcentBcellsBceaseBcaveB	causationBcausBcauB	catholicsBcastroBcastBcarolinaBcarlyBcaringBcarboBcapBcandleBcancelsB
campaignerBcameraBcalendarBcalculationsB	calculateBcalcBcakeBcadetsBcabinetBcabalBbuysBbutterfliesBbussinBburntBburnerBburgerBburdenBbumiBbullshBbulletBbullBbuiltB	buildingsBbugsBbuBbtobBbruceB	brookingsBbrokenBbrilliantlyBbreathesBbreatheBbreathB	breakfastBbrbBbrazileBbravoBbraveBbrainsBboycottBbouncingBbottomBboredBborealBboosterBboomersBboogieB	bombshellBbombingBbomBbolloxBbollocksBbokoBboilBboiBbobbyBboatsBblowingBblowhardBblossomsBbloomBblokeBblockingBblmB	blindnessBblessBbleakB	bleachingBblastBblanketBblamBblajarBblacksBbitsBbiteBbitchesBbirdBbiologicallyBbioBbindingBbillyBbillionairesBbikinisBbidBbiafraBbeyoncBbettingBbesidesBbernBbeliveBbelieverBbeheadBbegBbecBbayBbattlingBbasinBbasementBbaseBbarryBbarrowBbarefootBbarbieBbannedBbalticBbaldnessBbakitBbagoBbacteriaBbaconBbackfireBbabeBbabaBawfulBawakenBawakeBawBavoidsBavoidedB
automobileBautismB	austerityBaustBaugustBaugBaudienceBauchBattitudeB	attendeesB
attendanceB
attachmentBatlasBationB	asteroidsBassumingB	associateB
assistanceBassholesBassholeBassetsBassetBasseBassaultsBaskinBasidBasianBarsonistBarseBarnoldBarmiesBargumentativeBarguesBarchivesB
architectsBarabBapprovesBapprovalBappointBappliesB
applicableBapplauseBapplaudB
appearanceBappearBapesBapBantifaBantidoteB
antichristBansBannoyingBannounceBandrewBanchorBanalysesBanBamyBamishBamenBambitionBamberB
ambassadorBamazBalteredBalterBalpB	alongsideBalliesB	allegedlyBallegedBallahuBallahBallBaliasBalbumsBalaskansBalaskanBakoBakbarBairingBaimsBaikomiB
agreementsBagreeingBaggressivelyB	afternoonBadvisorsBadvisingBadviceB	advantageBadvancesBadorableBadoptedBadmireBadjustmentsB	addressedBadditionBadaptiveBadaptionBadaptedBadalahBactsB
activitiesBactivismBactivelyBactiveBackBaccusationsBaccurateBaccountableB
acceptanceBacceleratedB
accelerateBaccBacademyBabsorbBabsoluteBabsBabrahamBabolishBablBabilityBabideB
abandoningB	abandonedBaaaandBzurB
zuckerburgBzonesBzlatanBzionistBzikaB	zeitgeistBzeespiegelstijgingBzealotryBzakzakyBzacBzByvanByuraByupByukB"yteachstudentsabouttheirfutureplanByraByourmindByoogeByogiByikesByieldingByieldBygByesssByessByemByellingByelledByeeBybByasinByardByankeeByaniByameenByallsByakimaByaituByahByadByBxyBxxlBxxB
xenophobiaBxdBwymBwydBwxarnhemBwweBwthhhBwrongsBwrmngBwritingsBwritesB
wristbandsBwreckBwrathBwrasslinBwranglerBwrBwouldntBwotB
worshipperBworsenedBworrierBwormB	worldnewsBworlBworkshoppingBworkshopBworkoutBworkinBwordingBwordenBwoofBwoodyBwontBwondernBwondBwomensBwolfsBwolfBwokenBwoefullyBwmoBwitteB	witnessedBwitnessB	withstandBwithouBwithdrewB
witchcraftBwitcBwitBwishlistBwiseguysB
wiretappedBwireBwirBwinteredBwinnipegBwinkyBwindyB
windshieldB
windscreenBwindsBwindowBwimpyBwilsonBwilliamsB	willfullyBwillburnBwillbeBwileB	wikipediaBwikiBwigglingBwigBwieB
wickednessB	whydontthBwhtherBwhoppingBwhoopieBwhoooBwhollyBwholBwhitesBwhiteboiBwhistleblowersBwhineyBwhineB	whhhuuuutBwhewBwhereverBwheresBwhereasBwhackBwexlerBwetBwestgateBwesterosBwerentB
wereldwijdBwereBwendysBweltB	wellbeingB	welcomingBweirderBweighedBweicheiBweepBweeklyBwedsBwedgeBwebsitesBwebinarBweavingB	weavemamaBweathetBweatherwomanBweatherwatchBweatherstapoBweathersBweatherpatternsB
weathermenB
weathermanB
weatheringB
weatherillBweakerBweakensBweakenedBweaBwcwBwazzockBwatuBwattsupwiththatBwattsBwattB	waterwaysB	watershedBwaterkeeperBwatchdogBwasntBwashpostBwashesBwarriorBwargaBwarfareBwarfarBwardrobeBwarchBwapoBwankerBwandigaBwanajuaBwalterBwalleyBwalletsBwalletBwalledBwalkerBwalkedBwalkableBwaldmanBwakandaBwahlbergBwagedBwagBwaftingBwadesBwadeBwackosBwachtenBvulturesBvulnerabilityBvulnerabilitiesBvroorBvrBvoyagesBvowedBvotesB	voraciousBvonB
volunteersBvolumeBvoldemoBvolcanoB
volatilityBvogueBvocalB
vocabularyBvoBvlogsBvlogBvladBvivienneBvivianBvitalityBvisuallyBvisualizingBvisualizationsBvisualizationBvisitsBvisitorsBvisitorBvisitedBvisiBvisaBvirginiaBvirginalBvirginBvirenderB	violatorsB	violatingBviolatedBvioBvillainsBvillainBvillageBvilifiesBvileBvikasBvigoBvigilsB
viewpointsBviewedBviciousBvicarBvibeBviableBvettingBvettigaBvettedBveteranBvetBvestigeBvestedBvesselsBversusBverschwBvermontB
verifiableBverbeekBverballyBveracityBvenusBventureBventuraBveniceBvenezuelBvemBvelvetBveinsB	vehicularBvehiclesBvehiBvegasBvegBveersBveeredBvedderBvdBvaxxersBvaultsBvaultB
vasundharaBvastBvarricBvarietyBvariedB	variationBvarianceBvariabilBvarBvapB
vanguardiaBvandalsB	vandalismBvampireB	valuelessBvaliumBvalidityB
validatingB	validatedBvalarieBvalaisBvaginaB	vaccinateBvaccinatBuzebaleB
uzbekistanButterlyButteredB	utqiagvikB	utilizingButilityButensilButahBustadBussrBuserBusdaBusageBusadestructBurnBuringBurgingBurgedBurbaneBuqbdaBuptickBupsideBupperBupoBuploadedBuplandBupholdBuoB	unveristyBunveiledBunveilB	unusuallyBuntoucBuntiB	untenableBuntappedBuntangleBunsureB	unsecuredBunscriptedkiligBunscientificBunscBunsatisfyingBunsatisfiedB	unrefinedBunrealBunqualifiedBunpredictablBunpatrioticBunparalleledBunoBunnecessaryBunnecessarilyBunmovedBunmentionedBunloadBunlikelyB
unlicensedBunleashBunknownsBuniversityofchicagoBuniversitiesB	universesBuniversallyBuniverBunitingBunitiesBunitBunisonBunipccB
unintendedB	uninsuredBuninhabitableBunimpoBunifyingBunicornsB	unhelpfulBunheededBunhcrBunhappyBungeduldigerB	unfoldingBunfoldedBunfavorableBunfairlyBunexpectedlyBunethicallyBunescoBunequivocallyBunemptB
uneducatedBundoingB	undilutedBunderstaB
underratedBunderminingB
underminesB	undermineBundermiB	undergradB	undergoneB
undergoingBunderestimatingBundercuttingBundeB	uncoveredB
uncouplingBuncontrolledBunchaBunceremoniousB
unbotheredB	unblendedBunbelieversB	unbalanceBunavoidableBunavailableBunamshowBunambitiousBunairedBunaccountableBunablBumagaBultraBukipBuhuruBuhmBuhhhhhhBuhhBugliestBughhhhhBugalBugBufoBudineBudenBuclaBuberBtysonBtyresBtyrantsBtyrannyB	typicallyBtypesBtwittBtwentiesBtweetstormsBtweeterBtweeBtweakingBturnerBturnbulBturmoilBturkeyBturdboysBturdBtupeeBtuningBtungodBtunedBtuneBtundraBtumpahBtummiesBtumBtulsipurBtulongBtugonBtuffBtuesdayBtubianaBtubeBtsunamiBtsinghuaBtshiBtrympBtruthersBtrustingBtrusteesB
trumpstersB
trumpserstB	trumpkinsBtrumpetB	trumpcareB
truelinessBtroyeBtrounceBtroughBtrostBtropicsBtrophyBtropesBtrollingBtrolledBtrllBtristateBtripsBtrippyBtrimmingBtrilB
triggeringB	triggeredBtrickedBtribuneBtribulationBtribalBtrentBtrendyB
tremendousBtrekBtreatsB	treatmentBtreatiseBtreatiesBtreatedB	treasuresBtreasureB
treasonousBtreadBtreBtrawlingBtrashBtrapsBtrapBtransvestiteBtransnationalBtranslationsBtransformersBtransformativeBtransformationB	transformB
transcriptBtramplesBtrailerBtrailBtraiBtragediaBtraditionallyBtraditionalB	traditionB	tradeoffsBtradedBtracksBtrackingBtrackBtracesBtraceBtraBtpcBtoysBtoxinsBtowersBtowerBtoveBtoutingBtoursBtougherBtouchingBtoteBtotallB
totalizingBtotalitarianismBtotBtossesBtosserBtossedBtornaBtoriesBtoreBtorchedBtootinBtoonsBtoolsBtoolkitBtonigBtongueBtonB	tomorrowsBtomiBtombeBtolkienB	toleranceBtoldemB$tokillnationswithoutusinganyweaponbyBtokenBtohBtoesBtoenailBtoeBtobaBtoastsBtoadBtnBtixBtitsBtitledBtitansBtiresomeB
tirelesslyBtireBtiptoeBtiniestBtinderBtinagBtimmyBtimelinBtimebombBtillageBtilBtierBtidesB	tidalgateBtidalBticoBticksBtickledBtickingBticketBticaBthymesBthwaBthwBthunderBthugsBthugBthrownBthroBthriveBthrillerBthrilledBthrewB
thotstumesBthotBthorulBthorneBthompsonBthomasonB	thisistheBthirstyBthirstB	thinktankBthimgBthiefB	thicknessBthickBtheyzB
theuselessBthesunBthermometersBthermometerBthermodynamicallyBthermalBtheraB	theorizedB	theoristsBtheorieBtheologyBtheftBtheatricalsBtheaterBthawsBthawingBthawB
thankfullyBthanalanBtextosBtextingBtextedBtexansBtexanBtexBtestsB
testifyingBterryBterrorizingBterroristanB	territoryBterrifyinglyBterrificBterrestrialBterresBterorismBtermitesBtentedBtentangBtentB	tenggelamBtendencyBtemptedB	temporaryBtempleB
tempestadeB
temperaturB	temperateBtemperamentalBtemiBtemerityBtelltaleB
televisionB	telepathyBteleBtelBteeveeBteenageBteeBtedxtheevergreenstatecollegBteddyBtectonicB
techreviewBtechnologyseBtechnologiesBtechnologicalB
techniquesBtechjunkiejhBteaserBtearingBteamedBtdkBtcBtbfBtbdBtaxeBtawagBtauntonBtattooBtattiBtasteBtaskBtariffsBtargetedBtargetB	tarantinoBtapperBtappedBtaongBtantrumsBtanningBtangledBtangibleBtanamanBtampaBtameBtamB	talkradioBtalkinBtalentsBtalentedBtaleBtalBtakotBtakingitglobalBtakiBtakeoverBtakdaBtaimurBtailpipeBtahuBtahitiBtaheriBtacticsBtacticBtactiBtackerBtabukBtabsBtaboosBtabolaBsystematicallyB	symposiumBsympathyBsympathisingBsymbolicBsymbolBsyaBswornBswordBswoonyB	switzerlaBswitchedB	swinomishBswinneyBswimsuitBswimBsweetBsweepingBsweepBswedishBswedB
sweatpantsBsweatersBsweatBsweBswatheBswarmingBswanningB	swallowedBswB	svensmarkBsuzukiB	suuuuucksBsuttonB	sustainedBsussexBsuspendsB	suspectedBsushiBsusBsurvivBsurveysBsurveyedBsurulereBsurroundingsBsurroundingB
surroundedBsurrenderedB	surrenderBsurreB
surpassingBsurpBsurgeryBsurgeonBsurfaceBsuprisedB	supremacyBsupremaBsuppressionB
suppressesBsuppositionBsuppliesBsuppB
superyachtB	supermoonB	supermealBsuperiorityBsuperiorB	sunsharesBsunriseBsunningBsungaiB
sundressesBsunburnBsummedBsumixamxefitnopBsuitableBsuicideBsuhuBsuggestionsB
suggestingBsuffrageB
sufficientBsufferedBsuedBsudliBsudaniBsudaneseBsuckingBsuckBsuccumbsBsuccumbB
successiveB
successionBsuccessfullyB	successesBsubveBsubtleB	subtituteBsubstantiatedBsubstantiateB
subsidisesBsubsidesB
subsidenceB
subsequentBsubscriptionB	subscriptB
subpoenaedBsubpoenaB	submittedBsubmitBsubmissionsB	submergedBsubjugationBsubaruBsturgeonB	stupifiedB	stupidestBstupiderBstuntBstunnedBstumpBstudiedBstudBstsBstruckBstrucB	strontiumBstronglyB	strongestBstrmBstrippedBstringsBstrictlyBstrictB	stretchedBstressBstresBstrengthBstreetsblogBstrawsBstratBstrappedB	strangestBstrangerBstrangeBstraksBstrainB
straightenBstovesBstottBstotheB	storlazziBstorBstoodBstoneBstolenB	stocktrekBstocksBstockholderBstockedB
stochasticBstirsBstirringBstintBstinksBstinkingBstimulusB	stillnessBstilBstigmaBsticksBstevieBstevenBsteroidBsteppingBstephBstenographersBstemsBstemBsteinemBsteeriBsteamBsteaksB
steakhouseBsteadyBsteBstayingBstayedBstaveBstatueBstatistsB
statisticsBstatisticallyBstatisticalBstaticB
statepointB
statementsBstarvedBstarvBstarnesBstaringBstareBstanleyB
standpointBstampBstalwaB
staircasesB
staggeringBstagesBstagedBstaffedBstacksBstackingB	stabilizeBstabbingBstabbedBssxBsrBsqueakyBsqBspysBspyingBspurredBspunBspruceBsproutsB
sprinklingBspringerBspreeBspreadsBsprayedBsprayBspoutingBspoonsBspookyBsponsorsBsponsorB	spongebobBspongeBspokenBspiritualismBspiritBspinningBspillingBspilledBspewingBspeweBspewBspenducratsBspendiBspectacularlyBspectacularBspeciousB	specifiesBspecificBspecifBspecialistsBspeakerBspeBspawnBsparedBspainB	spaghettiBspacesBsoweeBsowedB	sovereignB	southwestB	southeastBsourcBsourBsoulsBsoughtBsouchBsosyalBsorelBsopranoBsopraB	sophistryBsoooooBsooooBsoonestBsonomaBsomethBsometBsomBsolvBsolutBsolltenBsolidifyingBsoldieBsofterB
sociopathsB	sociologyBsocietalBsociallyBsociBsocBsobraBsobBsoaringBsoarBsoalnyaBsoakedB	snugglingBsnowspoB	snowshoesB
snowmelterBsnowmanBsnowmageddonB	snowboardBsnowballBsnotBsnoringB	snookeredBsnoBsniffsBsniffingBsneakilyBsneakedBsneakBsnapchatBsnagBsnacksBsnBsmugBsmoothlyBsmonkBsmokesBsmokeBsmilesB
smerconishB
smashmouthBsmashedBsmarchBsmallholdingBsmallholderB	smallholdBsmBslushBsluggishBslowsBslowerBslovicBslopeBslogansBslipperyBslipB	slightestB	slideshowBslidesBslideBslidBsledBslaveryBslashingBslashBslantBslagsBslackBskynewsBskullBskripsitnyaBskipsBskippedBskipB	skilfullyBskiesBskiBskewedBsketchBskepBskaBsjukdomBsizesBsizedBsizeableBsiyaBsixtyBsixthBsisyphusBsisterBsinsBsinoBsinksBsinisterBsinglBsingingBsinghBsingBsimplifyB	simpletonB	silencingBsilBsiguroBsignpostBsignificantlyBsignifiBsigndBsightBsienceBsienaBsidsBsidesteppedBsicknessB	sickeningBsichBsiasaBsiapaBsiaBshyBshutterstockBshutdownBshunlistBshrubsB	shrinkingBshredBshowningB	showgirlsBshowedB	shovelingB	shovelersBshovedB
shoulderedBshouldBshopsB	shootingsBshocksBshldB	shiveringBshivBshitpostBshitlibsBshippedBshiningBshinierBshillingBshillBshiftedBshhBshepardBshemBshelvesBsheetalBsheepleBsheepBshedsBshedBshebiB
shatteringBsharpBsharonBsharksBshariaBshareholderBsharedBshardiBsharBshapedBshapeBshankBshanghaiBshamrockBshampooBshamefBshamedBshallBshaleBshakingBshakespeareB	shakedownBshakeBshaftedBshadesBshBsfidaBsfBsezB
seychellesBsewageBseverityBseveriBseveBsettlerB
settlementBsethBservicesBservesBserverBservedBserioBseriB	serengetiBserBsequestrationBseqraBseptBsepedaBsepeB
separatelyBseparatBseokjinBsentenceBsensitivityB	sensitiveBsensiBsensesBsensatoBsensationalismBseniorsBsendsBsemuanyaBsemiticBseminarsBsemiBsemesterBselloutsBselfieBselectivelyB	selectionBselectBsektorBsekolahBseismicBsehwagBsegregationistBsegregationBsegmentsBsegmentBseersBseerBseedsB	sedentaryB
securitiesBsecularistsBsecstateBsecretaryrossBsecratBsebelumBsebanyakBsebabBseawaterBseawallBseatsBseasonalB	searchingBsearchesB
seamanshipBsealedBseafoodBseaboardBseabedBsdgsBsdgBscrutinyB
scrutiniseBscrubsBscrubbedBscrubBscriptBscribingB	screeningBscreenBscreedB	screechedB	scrappingBscrapB
scramblingBscotusBscottishBscottadamssaysBscoffBscihubBscientisBscientificaBscientBsciencenordicB
sciencedayBsciamB	schrodersB	schoolingBscholarshipsBscholarsBscholarB	schneiderBschemesB	schellingBscheerBscheduleBscharboroughBscariestBscarcityBscarcelyBscarceBscandinavianBscammingBscammersBscammerBscalpingBscalingBscaliaBscaBsaxonBsaviorBsavereBsaudiBsaturnBsatishB	satisfiedBsatireBsatiateBsatanBsatBsarinBsarcasmBsappiaBsantorumBsantiagoBsantaolallaBsantBsansarBsankatBsankBsanityB
sanitationBsanhiBsanerBsandbarBsandbagsB	sanctuaryBsampleBsamokBsammyBsamenowBsamanthaBsalvageBsalmanBsaljuBsalesmanBsalemBsaleBsalariesBsalBsaintsBsailorsBsailorBsailingBsailedBsaiBsahilBsahanBsafestBsadnessBsaddestBsadderBsadarB
sacrificesB
sacrificedBsacredB
sacramentoBsacksBsackingBsachsBsabrinaB	saboteursBsabihinBsabiBsabBsaatBryallBrwsurfergirlBrvBrutgersBruskBrushesBruralBrunsBrungstheorienBrumpusBrumourBruffianBrubyBruahBruBrstaBrssBrsoeBrreverseBrozaBroyongBroyaltyBroyalBrowlingBroversBroverBroutesBrousseffBroundupB
roundtableBroundingB
rothschildBrotBrossBrosiBroseBrootingBrootedBromneyBromansBrolledBrollbackBrolBrohrabacherBrockyBrocksBrobsonBroboterBrobinBrobberyBroastBroamingBroadkillBroaBroBrncBrlyBrllyBriyadhBriversBritterBriskyBriskingBrisesBrisBripsBrippedBripoffsBripeBrinnovabiliBringsBriktigtBrigidB	rightwingBrightlyBrightiesB
rightfullyBriggedB
rifiutandoBridiculousnessBridiculouslyBridiculeBridhimaBriderBriddledBriddleBriddenB	ridculousBricoB	richtigesBriceBricanBrhythmsB
rhetoricalBreznorBrewriteBrewardsBrewardedBrevokeBrevisitBrevisingBrevisedBreviewsB	reversingBreversesBreversalBreversBreverberateBrevenueBrevengeB
revelationBrevelBreuseB	reunitingBretweetsB
retweetingBreturnsBretuBretoBretiresBretiredBretireBrethinkB	retentionBretardBresurrB
restructurB
restrictedBrestrainingB
restaurantBrestatedBressB
responsiveBresponsiblyB
responsiblBresponsibilitiyBrespiteB
respectllyBrespectfullyB
respectfulB	respectedBresourcefulBresolvedB	resistingB	resiliencBresignationBresignBresidentBreservesB
researchesBrescueB	rescindedBrescindBrescheduledBrequirementsBrequiredB
requestingBrepsBreproachBreproBrepresentativesBreplyBrepleteBreplacesBreplacementB
repetitionBrepeatedB	repealingBrepealBrepaiBrenewingBrenewBrenegingB	renderingBrenamedBrenBremovesBremindsB	remindingBremindedBremindBremedyBremarksB
remarkablyB	reluctantBreloadsBreliableBreliB	relevanceBreleasB
relativityB	relativesB
relativelyBrelatesBrelateBrelBrekvBrejectedBreinventB	reindeersBreignBreidBreichBregulrlyB	regulatorB
regulatingB	regulatedBregretsBregretB
registeredBregardsBregardleBregardBreganBrefutesBrefundB
refreshingBrefreshBreframeBreformulationB	reformingBreforestationBreflectsBreflectionsBrefersBreferredB
referendumBrefBreeeeeeeeeeeeeeeeeeeeeeBredwoodsB	redundantBreducesBreducBredsBredistributingB
redistribuBredditBrecyclicBrecoverB
recordingsBrecommendedBrecommendationsBrecomBrecollectionB
recognizedBrecognitionB
recognisedB	reckoningBrecipB	recievingBrecievedBrechtBreceiptBrebuttalBrebukeBrebootB	rebellingBreapingB	realizingBrealistBrealisedBrealiBreaffirmBreactsBreactorsBreactBrciBrbreichBrayonBrayBravesBravagingBravagesBravagedBrauBratsBrationBratifyBratificationBratifBratedBratBraptureBraptorsBrapsBrapesBrapeBranwBrantsBrantingBrangingBrangesBrangersB	randomestBrancourBranchBranBrampageBramificationsBramdamBramaiBramBralphBrallyingBrajniB
rajivdixitBrajeBrainyB	rainstormBrainsBrainbowBrailingBraidedBrahulBrahimBraghyBrageBraffreddamentoclimaticoBraeesBraeBradfemB
racketeersBracistsiBracistsBraciBrabidBrabbitBquranBquotesBquittingBquitB
quinnipiacBquieroBquickestBqueueB
questionerBquestionableBquestBquesBquentinBquelloBqueersBqueensBqueenBquebecBqueBquattroBquasiB
quantifiedBquaBqldB
pythagorasBpwedeBpvBputoBpussiesBpushersBpursuitBpursuingBpursuinBpursueBpurposesBpurpleBpurgeBpurchaseBpurchasdBpuppiesBpupilBpunkedB
punkawahlaB	punishingBpunditsBpunchingBpuncBpunBpumpsBpumpkinBpumpingBpumpB	pummelingBpujaraBpujaBpuhBpuercosBpuerB
publishingB	publishesBpublisheB
publicisedBpubBpuBptsdBptolemyBptB
psychopathBpsychologistsBpsychologicalBpsychoBpsychiatristsBpsychiatricBpseudoBpsakiB
pruittdoesBpruitBproyectoBproxyBprovokeBprovidedBprotBprostitutionB
prosperityBprospectiveBprospectB
prosecutorB
prosecutesBproposedBproposeB	proponentB	propogateBprophetB
propheciesBproperlyBpropagandizingBpropagandiziBpropagandizedBpropagandistsBpropagandistBpropBproofsBprooBpromulgatedBpromoterB	promisingBprollyBproliferationBproliferatioBprolifeBproletariatB	projectedBprogsBprogressivelyBprogressingB	programmeBprogrammBprognosticateBprogB
profoundlyBprofilesBprofessionsB
professingBproductivityB
productiveBproductB	producersBproducedBproctologistBprocrastinateB	processesBprocBprobsBproblembuttheBproblematicBproblemaBprobingBprobeBprobablB	proactiveB
privilegesB	privilegeBprivacyBprioritBprinterBprintB
principlesB	princetonBprincessB	primitiveBprimerBprideBprickBpricBpribadiBpriBprezboBprezB
previouslyB	preventedBprevailsBpretextB	pretendedBpretenceB
pressuringBpressconBpresidentingBpresidedBpresiBpreprintBpreppingBpreppedB	preparingBpreparednessBpreparationBprepB
premieringB	prematureBpreindustrialBprehistoricBpreferentialBpreferencesBpreferBprefaceBpreeningB
predictiveB
predictingBpredicteBpredeterminedB	predatoryBprecisamentBpreciousB	precinctsB	precedingB
precautionBprecariB	preachingBpreachedBpreBpravinBpranksBprankedBprakashBpraiseBprairiesBprairieB
practicingBpracticallyB	practicalBpptBppBpoxyBpoweradeBpowderyBpovBpourBpoundB	poteqtpalBpotentiBpotentBpotenBpotemkinB
postponingBpostponementB	postponedBpostersBpostdoctoralBpostalBpossibBpossBpositivBposibilitiesBposeyBporqueBporkiesBporkchopBporchBpopulismB	populatedBpopularizingB
popularityBpopsBpoorerBponziBponyBpontiusBpondsBponderedBpoluteBpolsBpolluticornBpollutesBpollutBpolluBpolledB	politicosBpoliticoBpolicymakingBpolicymakersBpolicingBpoliBpolarizeBpokingB	pointlessBpointedBpoetryBpoehlerBpodestaBpodcastsBpocketBpmoBplzzzBplzzB
plutocracyBplumeBpluckyBplowsBplowedBploBplightBpleistoceneBpledgedBpleasureBpleasBpleadBplayersBplayerB	plausibleB
platitudesBplatesBplateBplantingBplanneBplainBplacingB	pizzagateBpizzaBpivotBpityBpittanceBpitchingBpitchBpissingBpissBpippinB	pipelinesBpiorB
pioneeringBpinskyBpinsBpinnedBpinkosBpinkBpingosBpineBpinchB
pinapansinBpinakamahalagangBpinakaBpinBpillarBpilingBpiesBpierettBpidgeBpicttureBpicsBpickupBpickingBpiBphxBphrasesBphotographyBphotographsBphotographicBphotographerBphoneyBphonesB
philosophyBphilosophicalBphillipsBphilipB	phenomenaBphasesBpftBpeytonBpewBpettyBpetrolioBpetrochemicalsB	petitionsB
petitionedBpetersenB
petersburgB	petermannBpeterBpeteBpetaB
pestilenceB	pesticideBpessimisticBpeseBpesciBperveB	peruviansBperuB
persuasiveB
persuadingBperspeBpersonsBpersistB
persecutesB	persecuteB
perpetuityBperoBpermitB	permalinkBperluBperksBperilsB
perilouslyBperformsBperformBperceptionsBpercentagesB
percentageB	perceivedBperceiveBpeplerBpeotusBpeoniesBpeoBpensanoBpennyBpenisesB	peninsulaB
penggunaanBpengenBpenesBpenelitiBpenaltyBpenaBpenB
pemerintahBpembeB	pemakaianBpellB	peligrosoBpelaksanaanBpehleBpehaBpeersBpeepsBpeeB
pedophiliaB
pediatricsBpeddleBpeculiarB	peatlandsBpeatlandBpeatBpeasantBpearsonBpeachesB
peacefullyBpdtBpdfBpcBpblBpbbbbbbttttttttBpbBpaymentBpausaBpausBpattiesBpattiB	patrioticBpatrickBpatrB	patientlyBpatheticallyBpatersonBpatBpasturesBpastureBpastoB
passionateBpasifikaBpasBparsingBparodyBparmesanBparlorBparliamoBparigiBparentalworldknowledBpardonBparasiteB
paranormalBparanoiaB	paramountBparamilitaryB	parallelsBparallelBparaguayB
paragraphsBparadoxaBparadoxBparadigmBparBpapuaBpapalBpapBpanthersBpanoBpanningBpaniguradongBpanggilBpanganiBpaneraBpandeyBpanasnyaBpanahonBpamerannyapunBpamelaB	pamangkinBpamBpalmerBpalmentiBpalesBpaleoecologyBpaleBpalaeoecologyBpalBpakeBpairBpaintingBpaintB	painfullyBpainB
pagtatanimBpagigingB	pagdatingBpaedophiliaBpaddenstoelBpadawanBpadaBpactsBpackedBpackBpachauriBozBoymyakonBoxygenBoxideBowningB	ownershipBowletteBoverwhelminglyBoverviewB
overstatedBovershadowsBoverrunB	overreactB	overratedBoverraskelseB	overlooksBoverlapBoverflowingBoverexaggeratedBoverdevelopingB	overclockBoverallBoverBoutstandingB
outsourcedBoutsmaBoutsidBoutrightBoutreachBoutranBoutputBoutpacB	outnumberBoutlookB	outliningBoutlawedBoutlawBoutfitBoutdoorsmanBoutcomeB	outbreaksBoutbreakBoutbrBoustBourselvBouchBottersBotherBothardBothB	osullivanBossiaBosloB	orwellianBorsiBoroBormondB
originatedBorgasmsB
organizersBorganizeBorganisationB
oregoniansBoregonB	ordinanceBorchestratedBorbitBorangesBorangBoptimizationB	optimistsBopposiBopposesBopposedBopponentB	operativeB
operationsBopenviewBopensBopenlyBopenerBopenedBopcpBopchemtrailsBoorBoooohhhhBoonistsBookBontBonshoreBonovBonionBongBonenessBoneillB
onderschatBondergesneeuwdBonderBomnibusBomittedBomitBominousBomamieBomahaBomBolympicBolrBoliveBolioBoleBoldsBoldieBokonjoBokolletBoklaBoilsandsBoilsBofferingB	offensiveBoffenseBoffendedBoffendBofchristBochBoccurredBoccupiedBocareBocampoBobstructionB	obsessionBobsessedB
observableBobsceneBobozoB	obliviousBobeseB
obehagligtBobammysBobamacarBobaBnyoB
nyelamatinBnxtBnwoBnuttyBnutshellBnutjobBnutcasesBnutbagBnurseriBnumerousB
numbskullsB	numbskullBnumberedBnukedBnudesBnucleB
nuccitelliBnucBnswBnsaBnrBnprBnpgBnpBnoxiousBnowedBnowBnovicesBnovaBnottinBnotoriouslyBnotoriBnotleyBnotchBnotBnossoBnosesBnormandyBnormallyBnorkoBnorgeBnordhausBnorcalB	nopensionBnoooooooBnontonBnonsensB	nonprofitBnonpaBnoncompetitiveB
nominationB	nominatedBnomeBnomBnoemBnoelBnobleBnobBnoaasBnnamdiBnkklkBnitrousBniroB	niozatseaBninoBnineteenBnikliB
nihilisticB	nightmareB	nigeriansBnigerianBnigelBnieceB	nicknamedBnickelB	nicaraguaBnhBngoziBnglBnexusBnewtokBnewtBnewsroomBnewsmenBnewsmaxB
newsletterB	newshumanB	newscycleBnewlyBnevsB	nevermindBnevadaBnevBneutralBnetherworldB
netherlandBnessaBnervousBnervesBneredBnerBneotropicalBneoliberalismBnemaBnelayanBneilB
neighboursB	neighbourBneighboringB
negotiableBnegotB	negligiblB
negligenceB	neglectedB
negativelyBnegationistBneffBneeseBneeBneckBnearsBneaBndtvBndpBnclimBnbnBnbdBnaziB
nazarbayevBnavarroBnavalBnaugaB	naturenetBnatsBnatlB	nationalsBnationalityBnationalismBnatioBnatingBnateBnastyBnascostaBnarrrB	narrowingBnarrowBnarraBnarnianBnapushBnappingBnaplesmicheellB
napervilleBnapBnannyB
nanlalamigBnanjianiBnanaB	namikawasBnamiBnamedBnamBnalangBnakikisabayBnakedB
nakatulongBnailsBnaiB
nagtatampoBnagpurBnaggedBnafBnadiaBnadawBnadaBnabBmyxBmythicalBmythesBmysteryBmyriadBmylesB	myblastedBmyanmarBmyBmwaluaBmvmtBmvBmuzzlingBmuzzlesBmuzikiBmutuallyBmutualBmuteBmuskuraeBmusimBmusicalsB	mushroomsBmuseumsBmurrayBmurdochBmurdersBmuralsBmuppetryBmunichBmungkinBmunchBmunaBmumbaiB
multimediaBmultilateraBmulticulturalismBmultibillionBmullerBmullenBmullaBmuhammadBmuhBmugsBmuggyBmuggedBmugabeB	mudslidesBmucusBmuckBmuchosBmuchoBmuchaBmucBmuBmtvBmthighBmtgBmrsknBmppBmphBmpgBmpaBmoviBmovBmouthsBmouthingBmouthedBmourningBmourinhoBmountingB	mountainsBmountainBmouBmottoB	motorcadeBmotorBmotivesB
motivationB	motivatedBmotivateBmotionsBmotherfuckerBmotBmostB	mosquitoeBmoslemBmoscowBmosBmorsingBmorrocoBmorphingBmoronicBmorbidlyBmorawaBmoralsBmorallyBmorainesBmoraBmooseBmooreBmoonbyulBmoodBmontyBmontageBmonsoonBmonotoneB
monopolizeBmonkeysB
monitoringBmonitorBmoniesBmongsBmoncktonBmonBmomsBmomentoBmoltiBmogulBmofosBmoetBmodificationBmodificaB	modernismB	moderatorBmodelingBmodalBmodBmocksBmobilizeBmobiliseBmoarBmnB
mmpengaruiBmmaBmmBmlkBmlbBmlaBmjsBmizzouBmiyazakiBmixtureB
mitiyationBmitiBmisunderstandingBmisumB	mistakingBmistakesBmistakBmisspokeBmissouriBmississippiBmissileB	misschienBmisquoteBmisogynyBmisogynisticBmisleadBmisinterpretedB	miserableBmisBmirrorsBmirrorBmirandaBmirageB
miraculousB	mirabelliBmintBminorBminneapolisB	ministersB
minimizingBminimiseBmineralsBmindsetBminceBmilnBmilloyBmillioBmillerB
millennialB
militarismB	militantsBmilitBmileyB	milestoneBmilesBmileBmildBmilankovitchBmikeyB	migratingBmigratedBmigrantsBmigrantBmightyB
midwesternB	midstreamBmidnightBmideastB
microwavesBmicronesiansBmicrobiologistsB	microbialBmicrobesBmicroBmickBmichezoB	michaeliaBmicBmhoniBmgBmfsBmfBmexicansBmetteBmetersBmeteorologicoB	meteoriteBmeteorBmetaphorBmetalsB	messengerBmessagedBmesopotamiaB	merugikanBmerkleyBmeritsBmericaBmereBmercyB	merchantsBmerchBmercersBmercenariesBmeowingBmensenB
menopausalB	meningkatB
mengurangiB	menghematBmenggunakanB	mengatasiBmengakibatkanBmenaceBmemosB	memorizedBmemoirBmemoBmelteBmelhoresBmelelehBmelboBmelanieB
melancthonBmeiBmeggsB
megadonorsBmeerBmeeBmedsBmediumBmediterraneanBmedievalBmedicsBmedicalBmedicaidBmedalB	mechanismBmeatlessB	measuringB
measurablyBmeaninglessBmealyBmealsBmealB	mcphersonBmckinnonBmckibbenBmcellistremB	mcconnellBmcconaugheyB	mcchickenBmbdBmbawulaBmaysBmaynerBmaybBmaxinBmaximumB
mauthausenBmaunderBmauledBmauiBmauBmathemaBmathB	materialsBmaterializeBmaterialisticBmatBmastersBmasterpieceBmasseBmassachusettsBmaskBmasarapBmasalahBmasBmarylandBmarxistsBmarwotoBmarryingBmarryBmarqueeBmaroonBmarlinBmarkingBmarketsB
marketeersBmaritimeBmarinaB	marijuanaB	marigoldsBmarieBmariBmarginalizedBmarginBmarcovivoreeBmarathonBmaraleeBmaoismBmanuelBmanualsBmansionsBmanningB
manlalamigBmangingisdaBmangiaBmandiB	mandatoryBmandatedBmanateesBmammothsBmammothBmammalsBmammalBmamB
malthusianBmaltaBmalnourishedBmalinBmalamigBmalahBmakewargameBmakakatulongBmajBmairB	maintainsBmaintainBmainsBmaidBmahloboBmahbBmahalB	magsasakaBmagneticBmagnateBmagigingB	magicallyBmagicalBmagentaBmagbiladBmagalalaBmadridBmackBmachB
macfarlaneB	maceratedBmacamBmacBmaakteB	maaaaaaanBmaaBlyyxfBlyftBlvlBluvviesBluvsBluthorBlutherBlustBlushBlungBlunaticBlukakuBlukacsBluggageBludacrisBluckyBluchaBltrB	ltoddwoodBlowsBlowestBlowersBloweredBloweelBlovinBlouiseBloudestBlouderBlotteryBlosesBloserBlorrieBlordsBloosingBloosBloopsBlooooooooolBloooooolB	loooooadsBloonsBlooneyBloonBloomingBlookedB	loofbomenBlongtermBlonghornBlololololololB	lololololBlolololBlololBlolllllB	lollipopsBlogsBloggingBlocksBlockingBlockB	locationsBlocationBlocatedBlobbiesBloanBlmfaoBlmaoooBlizardB
livestreamB	liverpoolBlivelihoodsBlivableBlittlesBlitterstB
literatureBliterateBliteraryBliteralBliteBlitBlistsBliseBlinkagesBlineupBlinedBlinearBlinBlimosBlimboBlimbaughBlikewiseB	liketrumpB
likelihoodBlightlyBlightingBlightheaBliftedB	lifetimesBlifetimB	lifelinesBlickBlibtardBlibrealsBlibreBlibraryBliborB
liberationB	liabilityBlhanBlgbtsBleyBlevyB	leveragesBleukBlettersBletoBlessonBlesslyBlesleyBlepoolBleoneBlentilBlengtheningBlengthBlendBlemonadeBlemmingsBlemarBlelBlegitimizingB
legitimateBlegislatureBlegislatorsBlegislativeBlegislatBlegendsB	legendaryB
legalizingBlegalizationBlegBleftyBleftsBleechesBlebihBlebamBleaversBlearnsBleapingBleanBleagueBleadupBleadershBleachBleaBldcsBlbBlaysBlayerzBlayersBlayBlawyersBlawyerBlawsuitsB	lawngreenBlawmakerBlawlessBlautBlaurelsBlauraB
launderingBlaunchedBlaunchBlaughedB	laughablyBlaugBlatimeralderBlatelyBlatBlastsBlastedBlassiterBlassenBlasersB	lasallianBlarryBlarriesBlargerBlaramieBlaosB	landscapeBlandedBlanceBlanaBlanBlamarBlamaBlaikipiaBlahrenBlahoreBlahatBlagunaBlagosBladiesBlacroixBlachiesaBlabourBlabelsBlabanBlabBlaatBkyungsooBkyunBkyloBkylieBkxanBkweenBkushB	kuravvanyBkuopioBkuntBkumailBkujingaBkudosBkskxkskxkdksB
krokodilleBkroftBkrniBkrillBkrauseBkrabbyBkouBkookBkontraBkonsumsiB	konspirasBkonBkommerBkombatBknuckleheadsBknowledgeableBknowledgableBknowledgB	knowinglyBknockingBknobBkneesBkneBkmBklingonB
klimaatmafBklimBklaxonBkituBkittyBkittBkitBkissesBkirstenBkirbyBkingoBkindlyBkindlinBkindleBkinBkimmelBkilaBkickstaBkickingBkickedB	kickbacksBkiaerBkhoBkhanBkhaledBkhadrBkeynesBkesarB	kerfuffleBkerBkenneyBkennedyBkenBkemudianB
kemiskinanBkelilingBkejayB	kehidupanBkeerBkeepinBkeeperBkeenBkeeBkecilB	kcjsjjdjeBkbBkazmanBkayuBkayseeBkayBkawawaBkatyBkatieBkathyBkatanghalianBkatalBkarneBkarmaBkardashiansBkaraBkaputB
kapenguriaBkapagBkanyeBkanuBkangBkanadaBkampanyekanBkammenBkaminskyBkamarBkamalaBkalemBkalavesiBkalauB	kailanganBkahaBkaderBkabuteBjvpBjuulsBjustificationsBjustificationBjuryBjurisdictionalBjunkscienceBjunkiesBjunctionBjunBjumpingBjumpBjuliaBjulhoBjulBjuiceBjugaBjudicialBjudgmentBjudgmeBjuBjoysBjoyceBjoyBjournoBjourneyBjournaliBjonovaBjoltBjokerBjokBjointlyBjoiBjoaquinBjlBjisolBjindalBjinaBjinBjimmyB	jihadistsBjihadiBjgBjewittBjewessBjewBjettingBjesuitB	jerusalemBjerkBjerichoB	jenkinsonBjeffersonianB	jeffersonBjeepBjeenaBjebBjealousBjayBjassaigenehBjasonBjarrettBjargonBjarBjanuBjansenBjaneBjamsedBjamsBjammingBjamieB	jamaicansBjalapeBjailsBjaiBjadisBjacobBjackieBjackedBjackassBizzyBiwealaBivarBistvBistoBistilahBissuedBissaBisolationistBisobelB	islamistsBislamismB	islamabadBisinusulongBisingiroBisingBisilBisangBisaacBisaBirsB
irritationB	irritatedB
irrigationBirresponsablesBirrepressibleBirratBiraqiBiraqBiraniansBiraBiqinisoBipuBipoBiphoneBiowaBiosBionisBionateBinyaBinvokesBinvoiceBinvitesB	invisibleBinvestsBinvestorBinvestmBinvestigatedBinverseB	inventorsB	inventataBinventatB	invasionsBinvadersBinvadeBinundacionesBintroducingB
introducedB	introduceB
intriguingBintoleBintimateBintheB
intetaktifB
interviewsBinterviewedBintersectingB	intersectBinterpretationBinternalBinterimBintergalacticBinterferingB	interessiBinteractBintentionalB	intensiveB	intensifyBintensifiedBintensificationB
inteligentBintelBintegratingB
integratedB	integrateBinteBintakeBintBinsuringB
insurgentsBinsultBinsufficientBinstrumentalBinstructionBinstinctB
instellingBinstanceB	installedBinstabilityBinspirierenBinspiredBinspirationalBinsistsB
insistenceBinsignificantBinsignificanceBinsiderB	insideousBinsideBinsecureBinsectBinsanelyBinsBinquisitionB
inoculatedB
innovatorsBinnoculationsBinnitBinnateBinmatesBinkBinjuredB	injectingB	initiativBinitiBinheritB
inherentlyBinhabitBingredientsBingatBingaBinfrastructuresBinfraBinformsBinformBinforB
infomationBinfographicsBinfluencingB
influencesB
influencedBinfluencB	inflictedBinflatedBinflBinfiniteBinfernoB	infectingBinfamousB
infallibleBinfBinezB	inevitablB
inequlaityBinequityBineosBindyB
industriesBindustriallyBindustrializedB	inductionBinduceBindoorBindoctBindividualsBindisputableBindiscriminatelyBindignationB
indictmentB	indicatorBindicateBindianaBindebtedBindB	incumbentBincredulousB
incrediblyBincreasingtemperaturesBincreasinglyBincreasBincreaBincrBincorrectlyB	incorrectBincompetentsB
incoherentBinclBinciteBincidentB	incidenceBinchwormB	inceptionBinceptB
incendiaryBincarnationsB
inbreedingBinbredBinauguratedBinasarBinaneBinadveB
inadequateB
inactivityB
inaccurateBinaBimprovedBimprovBimprisonBimprintBimpressB
impoverishBimpostergableB	impossiblBimpossibiliBimpossibBimposedB	imploringB
implicatedBimplementingBimplementedBimplemBimpetusBimperilsBimperBimpeachmentB	impeachedBimpatiBimpaB	immigrantBimmigraB	immenselyBimmeltB	immediateBimmedBimmeasurableB
immaculateBimigratBimbecileBimaginedBimageryBimagBillustrationBillustratedB
illustrateBilluminatedBilltakeB	illnessesBillnessBillinoisBillegitimateBilkBilityBikoBikliB
ikipitishaBikawBiinitangBiinitanBiheB
ignorantlyB	ignoranteBignorancBignoraBignoBigloosBiggyBigesBigerBigBifiedBificialBiestBierBidotsBidolizationBidolatorBidolBidlingBiditarodBiditBidiocyBideologicallyBidentityB
identitiesB
identifiedBideesBidealsBidealBidBicyBiculatedBiculateBiconicBickeBicipantBicicleBichBicesBicedBicecreamBicecapB
icebreakerBicccBibrahimBibomBibnBiaeaBiaB	hystericsBhypotheticalB
hypocritesBhypocritB	hyperlinkB	hyperboleBhyperactiveBhypedB	hydrologyB
hydroflaskBhybridBhwestBhwardBhveBhvBhuwoBhustlingBhustleBhurryBhurrrdBhurpBhuntingBhuntersB	hungarianB	hundredthBhumphrysBhumpbackBhumiliatingB	humiliateBhumidityBhumbledB	humankindB
humanizingB
humanitiesBhulaBhujanBhuhuBhuhneBhuggersBhuffpostpolBhuffpoB
huffingtonBhuddlingBhuddleBhudBhubungannyaBhubsBhskyBhrsBhrightBhrcsBhowshouldwevoteBhowsBhowieBhowardBhourlyBhotnessBhotelBhostedB	hospitalsBhoskinsBhoseokB	horseshitBhorsesBhorriblyBhorntailBhornetsB	hopefullyBhopedBhopBhootieBhoosierBhoorayBhooplaBhoodwinkBhonraBhonouredBhomosexualsBhomosexualitetB
homophobiaBhomingB
homeownersBhomelessnessBhomelandBhombresBhombreBhomageBhomB	holosceneBhollowBhollandeBholidaysBholdingBhokumBhogwashBhoezoBhoesBhodsonBhockyBhoaxingBhoaxesBhndiBhmqBhmmmmBhmmBhmBhixtapeBhivBhittingBhittinBhitmanBhitlaryBhistoricallyB
historiansBhistorBhistoBhispeedB	hispanicsB	hiroshimaBhiresBhippiesB	hipnotizeBhindusBhinduB	hindsightBhindiBhinaB	himalayasBhiltonBhilliaryBhillbillaryBhilariouslyBhikesBhikeB	hijackingBhighsBhighlightedBhighesBhigBhierBhiemstraBhiddenBhicksBhibernatingBhiatusBhhcssBhfhhdhdhshfhsBhfcsBheroinBheritageBheritabilityBherismBhereticBhereBherdsBherdmenBherderBherbalBheraldBhenryBhenceB	hemispherBheloisaBhelmerBhelicoptersB
helicopterBhelenB	heinouslyBheinousBheiferBheheBhegsethBheftyB
heelllloooBheedingBhectoredBhecksBheckBhebrewBheaviestBheavierBheavensBheatsB	heathcareBheasternBhearsayBhearsBheapsBhealyB	healthcarBhealingBhealBheadassBheBhdkdksBhdayBhcomingBhcentricBhbrBhboBhbghBhbB	hazelwoodB	hazardousBhazaBhawksBhawaeBhavanaBhavBhauntsBhauntedBhauledBhauchardBhatsB
hatespeechBhatefulBhatedBhataBhastilyBhashtagB
harringtonBharrassBharpBharnessBhariniB	hardwoodsBhardwareBharassedBharassB	happinessBhappilyBhankBhangBhandlesBhandledBhandigeBhandfulBhandelBhandedlyBhandedBhanBhamptonB	hampshireBhammondBhammerBhamletsBhamesB
hamburgersBhamBhalvedBhaltsBhaltingBhalfwayBhalBhakkasanBhajiB
hailstonesBhailingBhailBhaighBhahahahhahahBhahahahahahaBhadithBhackersBhackedBhabitsBhabitatsBhabitBhabisBhaarpBgymBgwpfBgvtBguzzlersBgustsBgustavoBgustaBgurmeetBgunsenseB	gunpowderBgunnaBgunmakerBgummerBgumBgullibilityBguinnessBguiltyBguhBguestsBguessesBgueBgucciBguardianecoB
guaranteedBguBgtaB
grumblingsBgrownBgroundwaterBgroundedBgrosslBgrossBgroserBgristBgripBgriftersBgrievingBgreyfaceBgreyfacBgrenadBgregBgreenyB	greenwichBgreedyBgreedBgreatlyBgreaseBgreBgrazingBgravestBgravelyBgravBgrassyknollB
grassrootsBgrappleBgraphsBgrapheneBgranthamB
grandstandBgrandpaBgrandmaBgrandestBgrandchildrenB	grandchilBgrampsBgrahamB
graduationB
graduatingBgradsBgradenBgradBgpaBgpBgovtsBgovernmentalB	governingBgoughBgothsBgothBgotaBgosteiBgossipBgosjdbynBgoshBgorsuchBgoringBgorillaBgoresBgorebullBgorebalBgordonBgorBgopersBgoonsBgooglBgoodyB	goodnightBgoodmanBgoodieBgooderBgoodellBgoodeBgoniBgoliathsB	goldsteinBgoldmanBgojBgoeBgodzillaBgodlessBgodfreakBgoddessBgoddamnBgoddBgobstoppersBgobBgoatBgniteBgniBgnBgmoBglusBglowBglossyBgloriaBgloomBglobalisationBgliBglenBgleeBglbtBglassyBglassesBglasserBglanceBglafBgladlyBglacieBglaBgiveawayBgivBgiulianiBgitmoBgiseleB
girlfriendBgintherBginsuBginagawaBginaBgimpsBgigoBgigliBgibtB	gibberishBgiannoBgianfoBgiaeverBgiBghostedBghoshB	ghiacciaiBghgBgfcBgfBgeselBgerritBgerneBgermsBgermansBgeopoliticsB
geologicalBgeographersBgenuineBgentrificationB	gentlemanBgenreBgenocideBgenghisBgenesisB
generativeBgenerationalB	generatesBgeneBgemukBgelsBgellerBgeezersBgeezBgeeksBgeeeeezBgearingBgeBgazetteBgaugesBgatedBgateB	gatchamanBgaspBgarnautBgardensBgarbagBgarageBgangsterBganernBgandhiB	galvestonBgallucciBgallonsBgallantsBgalingBgalileoBgalaxyBgakBgainstBgainsBgainedBgaiaBgaiBgagBgaffedBfwiwB	futuristsBfurryBfurriesBfuriousBfuqBfunnBfunkinatrixBfuneralsB
fundraiserBfundersBfundamentalistBfundamentalismBfundamentalB	functionsBfunctioningBfunctionariesB
functionalBfumesBfulfillB	fukushimaBfuknBfukcingBfuellingBfuelledBfudgedBfuckwitBfucktardBfuckknuckleBfuckinBfuckerBfuckboyBfuccBfucBfryingBfrvzingBfrustratingBfrumhoffBfruitBfrostsBfrostB
frontlinesBfrontingB	frontiersBfromeBfromB	frivolousBfrioBfringeBfrigidBfrightenBfrigginBfriendzonedB
friendshipBfrienBfreyerBfretsB
freshwaterBfrescoB	frequencyBfrequBfreezerBfreewaysBfreestylingB	freemasonBfreemanBfreefrecansednegativeBfreedomsBfreedBfranticallyBfrankunderwoodBfranklyBfranciBfranBfragenBfrackinBfoundatBfoughtBfossilsBfossiliBfosilB
forwardingBforumsBforrestBformulationBformulaBformingBformerlyBforkedBforiegnB
foretastedBforestryBforestedB	forescaleBforesawBforesBforemostB
foreignersB	forecastsBfordBforcBfootpitrintBfootnoteB	foolishlyBfoodsBfooBfontiBfollyBfollowedBfollBfolioBfoiBfogBfocalBfocBfnqBfmrBfmBflysBfluxBflushedBfluentBfluctuationBfluB	floweringB
floridiansBflorentBflopsBflooBflogsBflockBfloatsB	flipboardBflipBflightsBfliBflewBfleeingBfleecingBfleaBflawsBflashesBflamesBflaggedBflabbitB
fiveoceansBfittingBfitsBfistB	fishermenB	fisheriesBfiscalB	firsthandBfirmBfiringB	fireworksBfirewoodBfirefightingBfirefightersB	firefightBfirBfinnaB	finlaysonBfinkelBfinkB	finishingBfingerprintBfinesBfinancedBfinalsBfilthyBfilterB	filmmakerBfilmedBfillingB
filibusterBfijiBfigurBfigueresBfightinBfightersBfighterBfiftyBfifthBfifeB	fiduciaryBfiddlingBfiddlesBffarBfewrB
feverishlyBfeverBfetusesBfetusBfestsBfestiveB	festivalsBferretsBferBfentanylBfenlandB	feministsBfeminismBfemalBfelonyBfellowsBfeesBfeedingBfeeB	federallyB
federalismBfederalbritainBfecklessBfecalopolisBfebbraioBfeaturesBfeasibleBfearlessBfearfulBfealtyB	favouriteBfavouredB	favorableBfaveBfaultyBfaultsBfaucetsBfatwaBfattiesBfatihBfathersBfastenedBfastcoexistBfassaBfascistsB	fascisticBfascinerendB
farsightedBfaresB	fantasiesBfangBfanficBfandomB	fanaticalBfanaticBfalsifyB	falsifiedBfallacyB
fallaciousBfaktorBfaktaresistensBfakeweathermodificationB	fakeugeesBfakenewsBfairlyBfairerB	fairbanksBfactoryB	factoriesBfactoredBfactoB	factcheckBfacialB	fabricateBfabledBfableBeyedBeyeballsB	extremistBextremBextrapolateBextraordinaryBextractBextinctionsBexternalBexterminationBexteriorB	extensiveB
extensionsB
expressionBexpressBexposingBexponentiallyBexpoB
explosionsB	explosionB	exploringB	explorersBexploredB	exploitedBexploitationBexploitB
explicitlyBexperimentsBexperimentedBexpensiBexpensesBexpenditureB	expellingBexpandsBexpandB	exoplanetBexonB	existanceBexiBexhilaratingB
exhibitionB
exhaustingBexhaustiBexhaustBexhalesBexhaleBexerciseBexemptB
executivesBexecuteBexcretedBexcitingB	exchangedBexchangeB	excessiveBexcerptB
excellencyBexceedB
excavationBexamineBexaggeratingBexactlBexacerbatingB	exacerbatBewnnBevsBevnBevisceratedBevidentiaryB	evidencedBevetyB	everytimeBeverlastingB
evergladesBeventualB
eventbriteB
evangelistBevangelicalsBevaluateBevadedB
evacuationBevacuateB	europeansBeuropeaBeuroBeuralB
eucalyptusBetlaBethnicsBethnicBethanolBeternalBestuaryB	estimatesBestebanBesteBestatesBestateBesqueBespressoB	espionageBespecialBespanolBescapeB
escalatingBeruptionBeruptedBeruptB	erroneousBerrBeropBermmBerkkiBericaBerectileBereBerasesBerasedBeraseBeradicatingB	eradicateBequatorBequatesBequateBequallyBepsteinBepisodesBepidemicBepektoBenvrnmntBenvirosBenvironmentsBenvironmentaBenvironmBenvironBenviroB	envirmtalBentryBentranceBentlyBentitlementsBentistBentialB
enterpriseBenteringBensuringBenslaveBensiaBensiBensBenronBenrichBenrBenormityBenormBenlightenedB	enlightenBenjoysB	enjoymentBenjoyinBenjoyedBenjBeningBenhancedBengulfsBenginesB
engineeredBengineBenggB
engagementBengaBengB	enforcingBenforcedBenforceBenergiaBenergBenemaBenduringBenduredBendorsesBendorseB	endocrineBendaBencouragingB	encourageBencodedtitleBenclosedB
encampmentBenablesBemprmntB	empoweredBempowerB	employingBemployeeBempireB
emphasizedBemperorBempBemotionBemojisB	emmissionBemmanuelBemittersBemitsBemissiBeminentBembracesBembraBemblemB
embezzlingBembeddedBembarrassmenBembarrassinglyBembarrassingB	embarrassBemailedBelsewherBellerBellenBelkeB	elizabethBeliminationB
eliminatesB
eliminatedBelicitedBeleventhB	elevationBelephantBelementsB
elementaryBelementB
electronicBelectromegnaticBelectricenergyB
electricalB	electoralBelecBelderlyB	elaborateBekoBejemploBejaculationBeinBeightBegonBegoBeglandBeggsBeggBegalitarianBegaBegBefronBefficientlyB
efficiencyBeffectivenessBeffectivelyBeffectenBeffectedBeffBefekBefectosB	eergisterBedumitBeducationalB	educatingBeducatesBeducateBeduBeditorsBeditionBedenBeddieB
ecumenicalBecuadorBecopunkB
economistsBeconomistradioB	economistB	economiesBeconomicallyBeconomBeconBecologyB
ecoanxietyBeclipsesBeclipsBecigsBecBebreBeauxBeatsBeasterBearningsBearliestBeamB	ealdermenBeagerBdystopicB	dystopianBdysonBdysfunctionBdykesBdykeBdwarfBdwBdvdBduurzameBduttBduteBdutchieBdustbinBdurhBduopolyBduniaBdummiesB	dumbfucksBdumbfuckBdumbeB
dumadagdagBdullardBdukungBdufferBduckBdublinBdubiousBdubaiBdualBduBdtsBdtrumpBdtBdryspellBdrunkenBdrumpfBdrugBdrudgeBdrownedBdrownBdroppBdronesBdriviBdrivBdripBdrinksBdressBdrenchedBdreadedBdreBdrawnBdrawinBdrawbridgesBdraughtBdrasticBdrankBdramatizBdrainerBdrainBdragonB	draconianBdptBdozierBdozenBdownsB
downloadedBdowningB	douchebagBdouchBdoubtingBdoubtersBdoublesBdoubleplusgoodBdotsBdotardBdotBdoseBdosB
dorchesterBdopeyBdopeBdoonBdoomsBdonorsBdonkeyB	donationsBdonatesBdonateB	dominatedBdomainsBdomBdolistenB
dokumenterBdoinBdoiBdohBdoggieBdodgyBdodgeBdodB	documentsBdocumentingBdoctorsBdoctorBdockBdnBdkeithclimateBdjBdivorcBdivisiveBdividingBdividendBdivideBdivestsB
divestmentBdivestB	divergentB	ditichingBditchingBditBdistrictBdistributingBdistractingBdistinctionBdistillationBdissentBdissenB
disruptorsB
disruptingBdisruptBdisregardingB	disregardB	disputingBdisputesB	disprovesBdispelsBdisparitiesBdisorderB
dismissingBdismiBdismayedBdishonoringBdisheaBdishB	disgustinB	disgustedB	disguisedBdisgracefulB	disgracedB
disempowerBdiseasBdisdainBdiscusB
discursiveBdiscriminatoryBdiscriminationBdiscreditingBdiscreditedB	discoveryBdiscoveriesB	discourseB
discourageB
discountedBdiscordBdisconceBdiscoB	disclosedBdisclaimersB	disbeliefBdisbandsB
disbandingB
disavowingB	disavowedBdisappointingBdisappoiBdisappearanceBdisapB	disagreesBdisagreeingBdisadvantageBdirectsB	directorsB	directiveB	dipsticksB	diplomatsBdiplomatBdipersalahkanBdiperhatikanB	dipanggilBdiosB	diodlxideBdiodesBdinosaurBdinosBdinoBdinahBdimeBdilmaBdildoBdijkBdigsBdignityBdigitalB	differingBdifferentiateBdifferencesB	differencBdiegoBdictumBdictatorBdictatedB
dicksmokerBdiceB	dibandingBdibaBdiavoloBdiaryBdialoguBdiaBdharamBdevilsBdeviantsB
developersB
devastatesB
devastatedB	devastateBdevalueBdettoBdettaBdetrimentalB
detonationB
determinedBdeteriorationBdetailedBdetailBdestructivenessBdestruBdestabilizingBdestB
despicableBdesperatelyB	desmedidoBdeskBdesiresBdesireB	desiignerB	designingB	designersB
designatedBdescriptionB	describedBdescentB
descendingBdescendantsB
desarrolloBdesarrolladoBdesafBdesBderpBderidingBderidesBderailedBderailBderaBdeprioritizeBdepressinglyB
depressingB	depressesB	depressedB
depositionBdepoBdeploysB	deploringB
deplorableB	depletingBdepletedBdepleteB	depictionB	depictingB
dependenceBdependBdeoBdenysBdentistsBdensityBdenotesBdeniroBdenialsB
denialistsBdemonstratingB
demonisingBdemonioBdemonicBdemiseBdementedB	delusionsBdelusionBdeltaBdelphiBdellambienteBdellagenziaBdelilahB
delicatelyBdelhiBdelftBdeletesBdelegationsBdegredationBdegrasseBdegradedBdegeneratesBdegcBdegBdefyingBdefrostB
defraudingBdefraudBdefraB	deforestaBdeflectsBdefianceBdefiBdefensB	defendingBdefencesBdefenceBdefaultBdefBdeeplyBdeepenBdeemedB	dedicatedBdecryBdecreeB
decreasingBdecolonisingBdeclinedBdeclareBdeclarationBdeckBdecisiveB
decimationB	decimatedBdecidesB	deceptionBdecentBdeceivedBdeceitBdecayBdecarbonizationBdebutB	debunkersBdebunkenBdebatBdebacleBdeanBdealtB	deafeningBdeafBdeadlierBdeaditeBdbaBdayyyBdawsonBdawBdavisBdaviesBdatiBdatedBdatabaseBdasBdarwinB	darnedestBdarkestBdaredBdaplBdannBdanielBdancingBdamnitBdameBdamagingBdalaiBdakotasBdahilanBdaddyBdacaBcyrusBcynicalBcyclonesBcyclBcyberattacksBcyberBcutieB	customersBcustodyBcushBcusBcurseBcursBcurryBcurrencyBcurieBcuresBcurbingBcurbeloBcurableBcuppaB
cunninghamBcumBculveBcultsBcultismBculletonBcudgelBcuddlingB	cuckaloosBcuckalooBcubesBcuBcticasBcthlcBctBcsiroB
cryinnngggBcryinBcrushesBcrushedBcrusadesBcrunchBcrumbBcruisesBcruelBcrudeBcrowdedBcrossingBcrossesBcropsBcrookBcronyismBcronyBcrocsBcrockBcritterBcriticizingB
criticizesB	criticizeB
criticismsB
criticisedB	criticiseBcriticBcrisprBcrisBcrippleBcringBcriminologyBcriminalizeBcriminalityBcriersBcriedBcrichtonBcriBcrewB	crescendoB	cremationBcreepsBcreedBcrediblB	creaturesBcreatureB
creativityBcreationistBcreationismBcreatiBcreatBcreaBcrbBcrayolaBcrawBcrappioBcrapolaBcranksBcrankBcraftedBcrackpotBcrackingBcrabBcraaazyBcraaaaaaayyyzzzyyyyyBcraBcpreBcpocBcoyBcowpocalypsB	coworkersB	cowardiceBcovfefeBcoutinhoBcoursBcouricBcourageBcouragBcountsBcountrysideBcountrysBcounterpointB	countdownB	counselorB
counselingBcouncilsBcoughedBcosyBcostumesB	costumersBcosmicB	corruptedBcorrupB	corridorsBcorrelationsBcorrelatingB	correlateBcorrelatB
correctionB
correctingB	correctedBcoresBcordalB
copperheadBcopingB
copenhagenBcooperatingBcooledBcoolantsBcoolaidBcooksBcookiesBcooBconveyedBconveyBconventionalB
convenientBconveB	conundrumBcontrastingBcontrailBcontradictsBcontradictoryBcontradictionBcontradictingBcontradictedB
contradictBcontraB
continuousBcontinueingB
contestadoB	containedBcontainBconsumedBconstitutionBconstantB	constanceB	conspiredBconspiracistsBconsistentlyBconsistenciesBconsignB	considersBconsiderationsBconsiderationB
conservingBconsBconroeBconquistadorBconquerBconoceBconnedB
connectingBconnectBconnecB
conjectureBcongressmenBcongratulationsBcongratulationBconfusesBconfrontingB
confirmingBconfidentlyBconferencesBconfederateBconfabB
conductorsB	conductedBcondomsBcondoB	conditionBconcussionsB
concussionBconcurBconcordoBconclusionsBconcentratesB	concensusB	conceivedBconcealsBcomunitBcomradesBcomradBcomprehensionB
componentsBcomplyBcomplicatedBcomplexpneiB	complexesB
complaintsB	complainiB
complainedBcomplainBcompilationB
competitivBcompeteBcompetBcompereB
compensateB
compassionBcomparisonsB	comparingBcomparesBcompareBcomparBcompanieB	commutingBcommutedB
communitieB	communismB	communiquBcommunBcommsBcommonsBcommonlyBcommodeBcommiesBcommieB
commentingB	commentedBcommandmentsBcommBcomicB	comfirmedBcomedianB
combustionB	combiningBcombineBcolumnsB	columnistBcolumbusBcolumbiaBcolourBcolorfulBcolonizeBcoloniesBcollidesBcollectivistB
collectionBcollectB	colleagueB
collapsingBcollabsBcollaborativeBcollaborationBcollabBcoleBcolbeBcoinedBcoincidentlyBcoinBcohoBcohnBcogB	cofounderBcoercionBcoerceBcodesBcodBcoconutBcocktailB
cockroacheBcoastsB	coastlineBcoarseB	coachellaBcoachB
cnycentralBcnnpoliticsBcmteBcmonBcmeBclosestBclosesBcloserBcloggedBcliveBclitBcliqueBclintonsBclingsBclingBclimeonBclimbersBclimbBclimatologistsB
climatiqueB	climaticiBclimaticallyBclimaticBclimaterealityBclimategateBclimatedepotBclimatechangeophobiaB
climaphobeBclimagteBclientBclickedB	cleverestBclearedBcleanupBcleansBcleanlinessBcleanerBcleaBcleBclausB	classmateBclashesBclashBclarkBclarityBclappingBclapBclammyBclairesBclaBckB	civilizedBcivB	citizenryB	citigroupBcitiBcitesBciteBcicadasBciaBciBchunkBchumpsBchuckleBchtlingskriseBchromosomesB	chriscoonBchoverBchoseBchorusBchorroBchoosingBchongBchokingBchokeBchokBchloeBchinooksBchineBchinBchillsBchilB
chihuahuasBchickBcheyenneB	chewbaccaBchewBchevyB
chesapeakeB	cherishedBchemiclyB	chemicalsBchemicalBchemBcheeseburgerBcheerleadersBcheerfulBcheerB	checklistBcheatedBcheatBchauffementB
chastisingBchasingB	charlotteBcharlieBchargedBchargB
charactersBcharacterizedBchaptersBchapatiB
channelingB
chancellorB	championsBchampBchamberlainBchalkBchalBchaiyeBchairingBchainsBcfBcetBcerBcentrismBcentricaB	centrallyBcenteredB
censoriousBcensoredBcensorBcenBcelsiusBcelledBcellBceiBcdnsBcdcBcdaBccsBcclconservativeBcciBccafsBcbsBcbeanBcbdBcbaBcbBcavutoBcavsBcautionBcaucusBcatsBcatrionaB	cathedralBcaterBcategoryBcatchallBcatastrophiB
catastrofeBcatastroBcatalystBcataclysmicBcatacBcasualtyBcastsBcastingBcashingBcashinBcashenBcasesBcasBcarusoBcarryingBcarrotsBcarrieB	carnationBcarlsonBcarlosBcarlBcaribouBcarelessBcarefulBcareerBcaredBcarecBcardsBcardinalBcarcinogenicBcarceralityBcarbonationB	carbonateBcaprioBcapitolBcapitalsBcapitalistsB
capitalistB
capitaliseBcapitaliBcapeBcanuteBcansBcanoeBcannesBcankersBcaneBcandidatBcancellationsB
cancellareBcanaryBcanadiansthinkBcanaBcampusesBcampsBcampbellBcampaigningBcamiloBcamilleBcamerasB	cambridgeBcambioB	camarottaBcalvingBcalleBcaliforniasBcaliforniansBcalifornBcalentamientoBcaldronBcalderonB
calamitiesBcaddyBcabsBcabB	byproductBbynesBbycorruptionBbwtBbuzzBbuyinB	butterflyBbutterBbustsBbustedBbustBbusiBbusesBburstBburnersBburkeBburiesBbunsBbunnyBbunkB
bundalangiBbunBbumsBbumpyBbummerBbullyingBbullyBbullshytBbullshittingBbullshitterBbullsBbullpenBbulliedBbulletsBbulldozeB	bulgarianBbuildsBbuilderBbuhariBbuhBbuenasBbudsBbuddyBbuddhaBbucksBbuckBbubblesBbubbleBbtwnBbtsBbtfoBbruvBbrutBbruntB	brunswickBbrunnBbruisingBbruhBbrueggemannBbrookingsinstBbroadestB	broadcastBbritsBbritonBbritneyBbritBbrinkB	brimstoneBbrightonBbrighterBbrigadesBbrigadeBbrienBbridesBbrideBbrickBbrewersBbrewerBbreezyBbreedingBbredaBbreathtakinglyBbreathtakingB
breathlessB	breathingBbreakerBbreadBbreBbrazyBbrayBbraverandstrongerBbravelyB	braunfelsBbransonBbrandisBbrandingBbrandedBbranchBbrakesB	brainwashBbrainedBbpBboxBbowlingBbowlBbowieBbouttaBboulderBbotsBbotheredBbothBbotBborrowedBborneoBborneBborjuisBboringBboredomBbootyBbootsBboostinB	bookshelfBbookletBbookerBboojateBbooedBbonkersBbonkedBboneBbombersBbombedB	bombasticBboltonBbolsBbolehBboldlyBboinkBboilingBbogoslofBbogglesBboeveBboardingBboB
bluestatesBbloodBblondeBblogsBblocksBblockedB
blockchainBblocBbloatedB	blizzardsBblitzBblissBblinksBblindlyB
blindinglyBblinderBblindedBbleedingBbleedBblazeB	blatantlyBblanketsBbladesB	blackrockBblackoutBblacklistedBblabbingBblBbjpBbizarroBbizarreBbizBbitterlyBbitterBbitlBbitchyBbitchingBbisonBbirolBbirB	biosludgeBbionovelousB
biomedicalB	biologistB
biologicalBbiofuelsB	bioenergyBbiodivBbingungBbingeBbinBbillionyahsBbilliBbilkBbilisBbilangBbilBbikesBbikeBbijnaBbijBbihtcBbigotsBbigotBbiglyBbigfootBbieberB	bicyclingBbiblicalBbhpBbhoBbhariBbharatBbffBbeweisBbewareBbeverlyB	bettermntBbettaBbetsB	betrayingBbetalBbetaBbesideBbesarBberniBberlinBberkontribusiB	bergotongBbergenconewsBbergB	beraturanBberakhirBbennetBbenjaminB
beneficialBbeneathBbelovedBbelongB
bellwetherBbellendBbellamyBbellaBbellBbeliBbelgianBbelBbekBbeisBbeingsBbeiBbeholdBbehiB	beheadingBbeheadedBbehaveBbehBbegsBbeggingBbegetBbeforeitsnewsBbeforeBbeetlesBbeecahraBbeeB	bedwetterBbedtimeBbedrohenB	bedfellowBbecuzBbeckwithBbeccsBbeccaBbecauBbecaBbebeBbeautyBbeautifullyBbeastBbearerBbeansBbeanBbeadsBbdnewsBbcuzBbcsBbcozBbcosBbbhackBbbB	bayoubuzzBbattingBbattedBbatmanB	bathroomsBbatesBbatcrapBbastardsBbastardiBbastardBbastaBbasisBbasingBbasicsBbashingBbashBbaselessBbasaltBbasaBbarwellBbarrieBbarrelsBbarrageBbaronBbarnabyBbarnBbariumBbarfBbareBbarberBbarbB	banyaknyaBbanksBbankruptBbankersBbangladeshisB
bangladeshBbandBbancheBbaloneyBballoonsB	ballisticBballadBballaBbalksBbalkB
baliwalainBbalancedB	balahaaaaBbakingBbakedBbakarBbakaniBbaitersBbairdBbaillionBbaharBbahanBbahalaBbahadurBbagiBbaggingBbagBbafflesBbadaB	backyardsBbackyardBbackwardBbackseatBbacksB
backgroundBbacBbaapBaztecsBazaleaBayyyBayhanBayersBaxelrodBaxeBaxBawholeBaweBawardsBawakensBawacheB	avoidanceBavidBaviBaveragBaverBavailabilityBavBautumnB
automationBautomaticallyB
authorshipBauthorizingBauthoritiesBaustrianBaustraBaustinB	augmentedBaufstiegBaudioB	audaciousBattributionBattributingB
attributedB	attributeBattributableBattractBattornoBattnBattireBatticusBattentivelyBattendedBattendBattemptsB
attemptingB	attemptedBattackedB	attaccatoBattaB	atmospherBatmosphBatmBatleastBatingBathubrBathletesBathensBatheistBatetheBateBastuteB	astronautBastoundinglyBastonishingBassumedB
associatesB
associatedBassistB
assignmentBasshatB	assessingBassessesBassemblyB
assembliesBassadBaspenBasleepBasktrumpsuppoBaskovBaskiBasherryBashbyBashamedB	ascribingBasceBasbBarsonB	arseholesBarrowBarrogantBarrivedBarrivBarrestsBarrangedBarosolsBarnhemBarmysBarisingBariseBaridBarguablyBarguableBarguB	argentineB	argentinaBarentBareBarchaeologyBarchaeologistBarcBaramcoBarabsBarabicBaquifersBaquestaBaptBapproxB	approvingBapprovedBapproveBapproachingB	apprehendBappreciatesBappreciatedB
appreciablBappointsB
appointingB	appointeeBapplicationsBapplicationB
applesauceBappeasesBappeaserBapparentB	appallingBappalledBaposB
apologizesBapoliticB
apocryphalB
apocalypseBapcBapathyBapanyaBanywhereBanythBanyformBanyBanwaysBanuBantisemitismBantisemiticBantisBanticipatoryBantibiotBanthropologicalBanthropologicB	anthropogBanthropgenicBanthonyB	answeringBanserBanosB	anonymousBanonsB	anomaliesBannuallyB
announcingB	announcesB	announcerBanniB	annealingBanneBannBanimusB	animationBangriestBangrierBangloBangliaBangleBangelsBangelBandyBandroidsBandroidBandesBandersonBandayaBancientsB	anchorageB	ancestorsBancamB	anastasiaBanalyzesBanalyzedBanalogouslyB	analogiesBanalBanagramBanaBamusingBamusedBamtsBamplifyBamoyB	amountingBamoungBamoriBamoebaBamitavBamericasBamericBamerBambushedBambushBamazeBamassedBamandaBamanBamB	alzheimerBalyBaluminumBaltruismB
altogetherB	alternatiBalteringBalsBalrightBalreadB
alphabettiBalotBalonBalmanacBallyB
alluminiumBalludingBallowsB
alligatorsBalleyB
alleviatedB	allenwestBallenBallahuakbarBalinskyBalignsBaliBalgaeB	alexanderBalexaBaleppoBalecBaldusBalasBalarmisBalanBalabamaBakwaBaktionB	aktifitasBakkadianBakinBakanBakBajplusBaisleB	airplanesBairplaneBairlineBairconditionerBainingBainedBaineBaimingBaimeBaimBaightBaholeBaholdBahmadiBahmadBahhhhghBahemBaheBahahahdhjahaBahahahahahhaBahahaBagroforestryBagroecologyB
agriculturBagricultBagribusinessBagrBagnstBagnosticBagmB
aggressiveB
aggravatedBagentBageingBagedBagarBagapeBagaiB	aftermathBafterBaftBafrofuturismBafricansBaffinityBaffiliationB
affiliatesB	affiliateBaffectofBaffectionateBaffeBaffairBafdbB	aestheticBaerosolsBaerialBaeiB
advocatingBadvocatestreeBadvocacyBadvisoryBadvisersBadvisedBadvisB	adventureBadveB
advantagesB	advancingBadvancedBadulteryBadultBadulatesBadriaticBadresseBadreanBadoptionBadoptingBadoB	admittingBadmissibilityBadministratoBadministationBadmBadlerB	adjustingBadityaBadheresBadelaideBaddsBaddioB	addictionB	adaptableBadaptaBadamsBadamBadairB	actuariesBactiviBactionnewsofficeBactioBacresBacosttaBacontecendoBacolytesBacneBacknowledgingBacknowledgesBacknowledgementBacknowledgeingBacknowledgedBacknBacidificationBacidB	achievingBachievementBachieveB
achievableBacharyaBachaBaceB
accustomedBaccusedBaccuseB
accuratelyBaccuracyBaccumulationBaccountsBaccountantsBaccordiB
accidentalBaccident
??
Const_5Const*
_output_shapes	
:?]*
dtype0	*??
value??B??	?]"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference_<lambda>_9696
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference_<lambda>_9701
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?5
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?5
value?5B?5 B?5
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
;
_lookup_layer
	keras_api
_adapt_function*
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses*
?
(iter

)beta_1

*beta_2
	+decay
,learning_ratemg mh!mi-mj.mk/mlvm vn!vo-vp.vq/vr*
.
1
-2
.3
/4
 5
!6*
.
0
-1
.2
/3
 4
!5*
* 
?
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

5serving_default* 
7
6lookup_table
7token_counts
8	keras_api*
* 
* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
?

-kernel
.recurrent_kernel
/bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses*
* 

-0
.1
/2*

-0
.1
/2*
* 
?

Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

 0
!1*

 0
!1*
* 
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!simple_rnn/simple_rnn_cell/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+simple_rnn/simple_rnn_cell/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEsimple_rnn/simple_rnn_cell/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

P0
Q1*
* 
* 
* 
R
R_initializer
S_create_resource
T_initialize
U_destroy_resource* 
?
V_create_resource
W_initialize
X_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 

-0
.1
/2*

-0
.1
/2*
* 
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
8
	^total
	_count
`	variables
a	keras_api*
H
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

`	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

b0
c1*

e	variables*
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE(Adam/simple_rnn/simple_rnn_cell/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE2Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE&Adam/simple_rnn/simple_rnn_cell/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUE(Adam/simple_rnn/simple_rnn_cell/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE2Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUE&Adam/simple_rnn/simple_rnn_cell/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
(serving_default_text_vectorization_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCall(serving_default_text_vectorization_input
hash_tableConstConst_1Const_2embedding/embeddings!simple_rnn/simple_rnn_cell/kernelsimple_rnn/simple_rnn_cell/bias+simple_rnn/simple_rnn_cell/recurrent_kerneldense/kernel
dense/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_9005
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOp?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOp3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp<Adam/simple_rnn/simple_rnn_cell/kernel/m/Read/ReadVariableOpFAdam/simple_rnn/simple_rnn_cell/recurrent_kernel/m/Read/ReadVariableOp:Adam/simple_rnn/simple_rnn_cell/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp<Adam/simple_rnn/simple_rnn_cell/kernel/v/Read/ReadVariableOpFAdam/simple_rnn/simple_rnn_cell/recurrent_kernel/v/Read/ReadVariableOp:Adam/simple_rnn/simple_rnn_cell/bias/v/Read/ReadVariableOpConst_6**
Tin#
!2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_9819
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate!simple_rnn/simple_rnn_cell/kernel+simple_rnn/simple_rnn_cell/recurrent_kernelsimple_rnn/simple_rnn_cell/biasMutableHashTabletotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/m(Adam/simple_rnn/simple_rnn_cell/kernel/m2Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/m&Adam/simple_rnn/simple_rnn_cell/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/v(Adam/simple_rnn/simple_rnn_cell/kernel/v2Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/v&Adam/simple_rnn/simple_rnn_cell/bias/v*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_9913??
?
?
while_cond_9155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_9155___redundant_placeholder02
.while_while_cond_9155___redundant_placeholder12
.while_while_cond_9155___redundant_placeholder22
.while_while_cond_9155___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?+
?
while_body_8227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@<E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:<J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:<<
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@<C
5while_simple_rnn_cell_biasadd_readvariableop_resource:<H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:<<??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@<*
dtype0?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:<*
dtype0?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:<<*
dtype0?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????<?

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
?
-
__inference__initializer_9656
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
while_cond_8046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_8046___redundant_placeholder02
.while_while_cond_8046___redundant_placeholder12
.while_while_cond_8046___redundant_placeholder22
.while_while_cond_8046___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?B
?
__inference__traced_save_9819
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop@
<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopJ
Fsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop>
:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableopG
Csavev2_adam_simple_rnn_simple_rnn_cell_kernel_m_read_readvariableopQ
Msavev2_adam_simple_rnn_simple_rnn_cell_recurrent_kernel_m_read_readvariableopE
Asavev2_adam_simple_rnn_simple_rnn_cell_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableopG
Csavev2_adam_simple_rnn_simple_rnn_cell_kernel_v_read_readvariableopQ
Msavev2_adam_simple_rnn_simple_rnn_cell_recurrent_kernel_v_read_readvariableopE
Asavev2_adam_simple_rnn_simple_rnn_cell_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopFsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableopCsavev2_adam_simple_rnn_simple_rnn_cell_kernel_m_read_readvariableopMsavev2_adam_simple_rnn_simple_rnn_cell_recurrent_kernel_m_read_readvariableopAsavev2_adam_simple_rnn_simple_rnn_cell_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopCsavev2_adam_simple_rnn_simple_rnn_cell_kernel_v_read_readvariableopMsavev2_adam_simple_rnn_simple_rnn_cell_recurrent_kernel_v_read_readvariableopAsavev2_adam_simple_rnn_simple_rnn_cell_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?]@:<:: : : : : :@<:<<:<::: : : : :	?]@:<::@<:<<:<:	?]@:<::@<:<<:<: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?]@:$ 

_output_shapes

:<: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$	 

_output_shapes

:@<:$
 

_output_shapes

:<<: 

_output_shapes
:<:

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?]@:$ 

_output_shapes

:<: 

_output_shapes
::$ 

_output_shapes

:@<:$ 

_output_shapes

:<<: 

_output_shapes
:<:%!

_output_shapes
:	?]@:$ 

_output_shapes

:<: 

_output_shapes
::$ 

_output_shapes

:@<:$ 

_output_shapes

:<<: 

_output_shapes
:<:

_output_shapes
: 
?

?
)__inference_sequential_layer_call_fn_8617

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?]@
	unknown_4:@<
	unknown_5:<
	unknown_6:<<
	unknown_7:<
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_8139o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_96966
2key_value_init681_lookuptableimportv2_table_handle.
*key_value_init681_lookuptableimportv2_keys0
,key_value_init681_lookuptableimportv2_values	
identity??%key_value_init681/LookupTableImportV2?
%key_value_init681/LookupTableImportV2LookupTableImportV22key_value_init681_lookuptableimportv2_table_handle*key_value_init681_lookuptableimportv2_keys,key_value_init681_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init681/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?]:?]2N
%key_value_init681/LookupTableImportV2%key_value_init681/LookupTableImportV2:!

_output_shapes	
:?]:!

_output_shapes	
:?]
?
?
)__inference_simple_rnn_layer_call_fn_9103

inputs
unknown:@<
	unknown_0:<
	unknown_1:<<
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_8113o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
)__inference_sequential_layer_call_fn_8452
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?]@
	unknown_4:@<
	unknown_5:<
	unknown_6:<<
	unknown_7:<
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_8404o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?<
?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9546

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:@<=
/simple_rnn_cell_biasadd_readvariableop_resource:<B
0simple_rnn_cell_matmul_1_readvariableop_resource:<<
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@<*
dtype0?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9480*
condR
while_cond_9479*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????<g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????<?
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_9611

inputs
states_00
matmul_readvariableop_resource:@<-
biasadd_readvariableop_resource:<2
 matmul_1_readvariableop_resource:<<
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????<G
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????<W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????<Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????<?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????@:?????????<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????<
"
_user_specified_name
states/0
?
?
%sequential_simple_rnn_while_cond_7572H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2J
Fsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1^
Zsequential_simple_rnn_while_sequential_simple_rnn_while_cond_7572___redundant_placeholder0^
Zsequential_simple_rnn_while_sequential_simple_rnn_while_cond_7572___redundant_placeholder1^
Zsequential_simple_rnn_while_sequential_simple_rnn_while_cond_7572___redundant_placeholder2^
Zsequential_simple_rnn_while_sequential_simple_rnn_while_cond_7572___redundant_placeholder3(
$sequential_simple_rnn_while_identity
?
 sequential/simple_rnn/while/LessLess'sequential_simple_rnn_while_placeholderFsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1*
T0*
_output_shapes
: w
$sequential/simple_rnn/while/IdentityIdentity$sequential/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_9263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_9263___redundant_placeholder02
.while_while_cond_9263___redundant_placeholder12
.while_while_cond_9263___redundant_placeholder22
.while_while_cond_9263___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?e
?
D__inference_sequential_layer_call_and_return_conditional_losses_8404

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	!
embedding_8388:	?]@!
simple_rnn_8391:@<
simple_rnn_8393:<!
simple_rnn_8395:<<

dense_8398:<

dense_8400:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?"simple_rnn/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_8388*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_8002?
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0simple_rnn_8391simple_rnn_8393simple_rnn_8395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_8293?
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0
dense_8398
dense_8400*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8132u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
+
__inference__destroyer_9661
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
while_cond_8226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_8226___redundant_placeholder02
.while_while_cond_8226___redundant_placeholder12
.while_while_cond_8226___redundant_placeholder22
.while_while_cond_8226___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?

?
?__inference_dense_layer_call_and_return_conditional_losses_8132

inputs0
matmul_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????<
 
_user_specified_nameinputs
?f
?
D__inference_sequential_layer_call_and_return_conditional_losses_8519
text_vectorization_inputO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	!
embedding_8503:	?]@!
simple_rnn_8506:@<
simple_rnn_8508:<!
simple_rnn_8510:<<

dense_8513:<

dense_8515:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?"simple_rnn/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2p
text_vectorization/StringLowerStringLowertext_vectorization_input*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_8503*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_8002?
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0simple_rnn_8506simple_rnn_8508simple_rnn_8510*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_8113?
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0
dense_8513
dense_8515*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8132u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_9628

inputs
states_00
matmul_readvariableop_resource:@<-
biasadd_readvariableop_resource:<2
 matmul_1_readvariableop_resource:<<
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????<G
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????<W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????<Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????<?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????@:?????????<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????<
"
_user_specified_name
states/0
?

?
"__inference_signature_wrapper_9005
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?]@
	unknown_4:@<
	unknown_5:<
	unknown_6:<<
	unknown_7:<
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_7646o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
D__inference_sequential_layer_call_and_return_conditional_losses_8810

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	2
embedding_embedding_lookup_8693:	?]@K
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:@<H
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:<M
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:<<6
$dense_matmul_readvariableop_resource:<3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?simple_rnn/while?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_8693?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/8693*+
_output_shapes
:?????????@*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/8693*+
_output_shapes
:?????????@?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@n
simple_rnn/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<?
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:?????????<n
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0"simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@Z
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???j
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@<*
dtype0?
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0?
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<}
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<y
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???Q
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????_
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *&
bodyR
simple_rnn_while_body_8737*&
condR
simple_rnn_while_cond_8736*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????<*
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????l
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????<?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0?
dense/MatMulMatMul#simple_rnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????f
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
9
__inference__creator_9633
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name682*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?

?
)__inference_sequential_layer_call_fn_8162
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?]@
	unknown_4:@<
	unknown_5:<
	unknown_6:<<
	unknown_7:<
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_8139o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_9479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_9479___redundant_placeholder02
.while_while_cond_9479___redundant_placeholder12
.while_while_cond_9479___redundant_placeholder22
.while_while_cond_9479___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?
?
__inference_save_fn_9680
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
? 
?
while_body_7707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_simple_rnn_cell_7729_0:@<*
while_simple_rnn_cell_7731_0:<.
while_simple_rnn_cell_7733_0:<<
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_simple_rnn_cell_7729:@<(
while_simple_rnn_cell_7731:<,
while_simple_rnn_cell_7733:<<??-while/simple_rnn_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_7729_0while_simple_rnn_cell_7731_0while_simple_rnn_cell_7733_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????<:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_7694?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????<|

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0":
while_simple_rnn_cell_7729while_simple_rnn_cell_7729_0":
while_simple_rnn_cell_7731while_simple_rnn_cell_7731_0":
while_simple_rnn_cell_7733while_simple_rnn_cell_7733_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
?
E
__inference__creator_9651
identity: ??MutableHashTable|
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_7*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?3
?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_7770

inputs&
simple_rnn_cell_7695:@<"
simple_rnn_cell_7697:<&
simple_rnn_cell_7699:<<
identity??'simple_rnn_cell/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_7695simple_rnn_cell_7697simple_rnn_cell_7699*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????<:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_7694n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_7695simple_rnn_cell_7697simple_rnn_cell_7699*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_7707*
condR
while_cond_7706*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????<g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????<x
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?u
?
 __inference__traced_restore_9913
file_prefix8
%assignvariableop_embedding_embeddings:	?]@1
assignvariableop_1_dense_kernel:<+
assignvariableop_2_dense_bias:&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: F
4assignvariableop_8_simple_rnn_simple_rnn_cell_kernel:@<P
>assignvariableop_9_simple_rnn_simple_rnn_cell_recurrent_kernel:<<A
3assignvariableop_10_simple_rnn_simple_rnn_cell_bias:<M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: B
/assignvariableop_15_adam_embedding_embeddings_m:	?]@9
'assignvariableop_16_adam_dense_kernel_m:<3
%assignvariableop_17_adam_dense_bias_m:N
<assignvariableop_18_adam_simple_rnn_simple_rnn_cell_kernel_m:@<X
Fassignvariableop_19_adam_simple_rnn_simple_rnn_cell_recurrent_kernel_m:<<H
:assignvariableop_20_adam_simple_rnn_simple_rnn_cell_bias_m:<B
/assignvariableop_21_adam_embedding_embeddings_v:	?]@9
'assignvariableop_22_adam_dense_kernel_v:<3
%assignvariableop_23_adam_dense_bias_v:N
<assignvariableop_24_adam_simple_rnn_simple_rnn_cell_kernel_v:@<X
Fassignvariableop_25_adam_simple_rnn_simple_rnn_cell_recurrent_kernel_v:<<H
:assignvariableop_26_adam_simple_rnn_simple_rnn_cell_bias_v:<
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp4assignvariableop_8_simple_rnn_simple_rnn_cell_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp>assignvariableop_9_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp3assignvariableop_10_simple_rnn_simple_rnn_cell_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:11RestoreV2:tensors:12*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 _
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_embedding_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_dense_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp<assignvariableop_18_adam_simple_rnn_simple_rnn_cell_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpFassignvariableop_19_adam_simple_rnn_simple_rnn_cell_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp:assignvariableop_20_adam_simple_rnn_simple_rnn_cell_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_embedding_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_dense_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp<assignvariableop_24_adam_simple_rnn_simple_rnn_cell_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpFassignvariableop_25_adam_simple_rnn_simple_rnn_cell_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp:assignvariableop_26_adam_simple_rnn_simple_rnn_cell_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?6
?

simple_rnn_while_body_89052
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0S
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:@<P
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:<U
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:<<
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorQ
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:@<N
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:<S
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:<<??7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@<*
dtype0?
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:<*
dtype0?
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:<<*
dtype0?
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<?
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<?
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:???X
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: :????
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:0^simple_rnn/while/NoOp*
T0*'
_output_shapes
:?????????<?
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"?
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"?
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_9371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_9371___redundant_placeholder02
.while_while_cond_9371___redundant_placeholder12
.while_while_cond_9371___redundant_placeholder22
.while_while_cond_9371___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?6
?

simple_rnn_while_body_87372
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0S
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:@<P
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:<U
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:<<
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorQ
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:@<N
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:<S
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:<<??7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@<*
dtype0?
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:<*
dtype0?
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:<<*
dtype0?
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_2@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<?
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<?
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:???X
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: :????
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:0^simple_rnn/while/NoOp*
T0*'
_output_shapes
:?????????<?
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"?
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"?
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
?D
?
__inference_adapt_step_9054
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2a
StringLowerStringLowerIteratorGetNext:components:0*'
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite }
SqueezeSqueezeStaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2Squeeze:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?f
?
D__inference_sequential_layer_call_and_return_conditional_losses_8586
text_vectorization_inputO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	!
embedding_8570:	?]@!
simple_rnn_8573:@<
simple_rnn_8575:<!
simple_rnn_8577:<<

dense_8580:<

dense_8582:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?"simple_rnn/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2p
text_vectorization/StringLowerStringLowertext_vectorization_input*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_8570*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_8002?
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0simple_rnn_8573simple_rnn_8575simple_rnn_8577*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_8293?
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0
dense_8580
dense_8582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8132u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_7694

inputs

states0
matmul_readvariableop_resource:@<-
biasadd_readvariableop_resource:<2
 matmul_1_readvariableop_resource:<<
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????<G
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????<W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????<Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????<?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????@:?????????<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????<
 
_user_specified_namestates
? 
?
while_body_7866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_simple_rnn_cell_7888_0:@<*
while_simple_rnn_cell_7890_0:<.
while_simple_rnn_cell_7892_0:<<
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_simple_rnn_cell_7888:@<(
while_simple_rnn_cell_7890:<,
while_simple_rnn_cell_7892:<<??-while/simple_rnn_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_7888_0while_simple_rnn_cell_7890_0while_simple_rnn_cell_7892_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????<:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_7814?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :????
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????<|

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0":
while_simple_rnn_cell_7888while_simple_rnn_cell_7888_0":
while_simple_rnn_cell_7890while_simple_rnn_cell_7890_0":
while_simple_rnn_cell_7892while_simple_rnn_cell_7892_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
?+
?
while_body_9372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@<E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:<J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:<<
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@<C
5while_simple_rnn_cell_biasadd_readvariableop_resource:<H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:<<??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@<*
dtype0?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:<*
dtype0?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:<<*
dtype0?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????<?

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
??
?
D__inference_sequential_layer_call_and_return_conditional_losses_8978

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	2
embedding_embedding_lookup_8861:	?]@K
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:@<H
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:<M
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:<<6
$dense_matmul_readvariableop_resource:<3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?simple_rnn/while?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_8861?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/8861*+
_output_shapes
:?????????@*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/8861*+
_output_shapes
:?????????@?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@n
simple_rnn/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<?
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:?????????<n
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0"simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@Z
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???j
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@<*
dtype0?
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0?
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<}
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<y
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???Q
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????_
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *&
bodyR
simple_rnn_while_body_8905*&
condR
simple_rnn_while_cond_8904*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????<*
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????l
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????<?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0?
dense/MatMulMatMul#simple_rnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????f
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_embedding_layer_call_and_return_conditional_losses_8002

inputs	(
embedding_lookup_7996:	?]@
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_7996inputs*
Tindices0	*(
_class
loc:@embedding_lookup/7996*+
_output_shapes
:?????????@*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/7996*+
_output_shapes
:?????????@?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
simple_rnn_while_cond_89042
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1H
Dsimple_rnn_while_simple_rnn_while_cond_8904___redundant_placeholder0H
Dsimple_rnn_while_simple_rnn_while_cond_8904___redundant_placeholder1H
Dsimple_rnn_while_simple_rnn_while_cond_8904___redundant_placeholder2H
Dsimple_rnn_while_simple_rnn_while_cond_8904___redundant_placeholder3
simple_rnn_while_identity
?
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?
?
__inference__initializer_96416
2key_value_init681_lookuptableimportv2_table_handle.
*key_value_init681_lookuptableimportv2_keys0
,key_value_init681_lookuptableimportv2_values	
identity??%key_value_init681/LookupTableImportV2?
%key_value_init681/LookupTableImportV2LookupTableImportV22key_value_init681_lookuptableimportv2_table_handle*key_value_init681_lookuptableimportv2_keys,key_value_init681_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init681/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?]:?]2N
%key_value_init681/LookupTableImportV2%key_value_init681/LookupTableImportV2:!

_output_shapes	
:?]:!

_output_shapes	
:?]
?
?
__inference_restore_fn_9688
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
C__inference_embedding_layer_call_and_return_conditional_losses_9070

inputs	(
embedding_lookup_9064:	?]@
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_9064inputs*
Tindices0	*(
_class
loc:@embedding_lookup/9064*+
_output_shapes
:?????????@*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/9064*+
_output_shapes
:?????????@?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
while_body_9156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@<E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:<J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:<<
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@<C
5while_simple_rnn_cell_biasadd_readvariableop_resource:<H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:<<??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@<*
dtype0?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:<*
dtype0?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:<<*
dtype0?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????<?

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
?
}
(__inference_embedding_layer_call_fn_9061

inputs	
unknown:	?]@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_8002s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
.__inference_simple_rnn_cell_layer_call_fn_9580

inputs
states_0
unknown:@<
	unknown_0:<
	unknown_1:<<
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????<:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_7694o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????<q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????@:?????????<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????<
"
_user_specified_name
states/0
?
?
)__inference_simple_rnn_layer_call_fn_9114

inputs
unknown:@<
	unknown_0:<
	unknown_1:<<
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_8293o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?@
?
%sequential_simple_rnn_while_body_7573H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2G
Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0?
sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:@<[
Msequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:<`
Nsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:<<(
$sequential_simple_rnn_while_identity*
&sequential_simple_rnn_while_identity_1*
&sequential_simple_rnn_while_identity_2*
&sequential_simple_rnn_while_identity_3*
&sequential_simple_rnn_while_identity_4E
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1?
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor\
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:@<Y
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:<^
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:<<??Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp?Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp?Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp?
Msequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
?sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0'sequential_simple_rnn_while_placeholderVsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@<*
dtype0?
2sequential/simple_rnn/while/simple_rnn_cell/MatMulMatMulFsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:<*
dtype0?
3sequential/simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd<sequential/simple_rnn/while/simple_rnn_cell/MatMul:product:0Jsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:<<*
dtype0?
4sequential/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul)sequential_simple_rnn_while_placeholder_2Ksequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
/sequential/simple_rnn/while/simple_rnn_cell/addAddV2<sequential/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0>sequential/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<?
0sequential/simple_rnn/while/simple_rnn_cell/TanhTanh3sequential/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<?
@sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_simple_rnn_while_placeholder_1'sequential_simple_rnn_while_placeholder4sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:???c
!sequential/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
sequential/simple_rnn/while/addAddV2'sequential_simple_rnn_while_placeholder*sequential/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential/simple_rnn/while/add_1AddV2Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counter,sequential/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: ?
$sequential/simple_rnn/while/IdentityIdentity%sequential/simple_rnn/while/add_1:z:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
&sequential/simple_rnn/while/Identity_1IdentityJsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
&sequential/simple_rnn/while/Identity_2Identity#sequential/simple_rnn/while/add:z:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: ?
&sequential/simple_rnn/while/Identity_3IdentityPsequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: :????
&sequential/simple_rnn/while/Identity_4Identity4sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0!^sequential/simple_rnn/while/NoOp*
T0*'
_output_shapes
:?????????<?
 sequential/simple_rnn/while/NoOpNoOpC^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0"Y
&sequential_simple_rnn_while_identity_1/sequential/simple_rnn/while/Identity_1:output:0"Y
&sequential_simple_rnn_while_identity_2/sequential/simple_rnn/while/Identity_2:output:0"Y
&sequential_simple_rnn_while_identity_3/sequential/simple_rnn/while/Identity_3:output:0"Y
&sequential_simple_rnn_while_identity_4/sequential/simple_rnn/while/Identity_4:output:0"?
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0"?
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"?
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"?
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"?
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensorsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2?
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpBsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2?
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpAsequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2?
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpCsequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
?	
?
simple_rnn_while_cond_87362
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1H
Dsimple_rnn_while_simple_rnn_while_cond_8736___redundant_placeholder0H
Dsimple_rnn_while_simple_rnn_while_cond_8736___redundant_placeholder1H
Dsimple_rnn_while_simple_rnn_while_cond_8736___redundant_placeholder2H
Dsimple_rnn_while_simple_rnn_while_cond_8736___redundant_placeholder3
simple_rnn_while_identity
?
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?
)
__inference_<lambda>_9701
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
while_cond_7865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_7865___redundant_placeholder02
.while_while_cond_7865___redundant_placeholder12
.while_while_cond_7865___redundant_placeholder22
.while_while_cond_7865___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?<
?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9438

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:@<=
/simple_rnn_cell_biasadd_readvariableop_resource:<B
0simple_rnn_cell_matmul_1_readvariableop_resource:<<
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@<*
dtype0?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9372*
condR
while_cond_9371*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????<g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????<?
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?=
?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9330
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:@<=
/simple_rnn_cell_biasadd_readvariableop_resource:<B
0simple_rnn_cell_matmul_1_readvariableop_resource:<<
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@<*
dtype0?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9264*
condR
while_cond_9263*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????<g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????<?
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?
?
while_cond_7706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_7706___redundant_placeholder02
.while_while_cond_7706___redundant_placeholder12
.while_while_cond_7706___redundant_placeholder22
.while_while_cond_7706___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????<: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
:
?=
?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9222
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:@<=
/simple_rnn_cell_biasadd_readvariableop_resource:<B
0simple_rnn_cell_matmul_1_readvariableop_resource:<<
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@<*
dtype0?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9156*
condR
while_cond_9155*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????<g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????<?
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?
?
$__inference_dense_layer_call_fn_9555

inputs
unknown:<
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8132o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????<: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
)__inference_simple_rnn_layer_call_fn_9081
inputs_0
unknown:@<
	unknown_0:<
	unknown_1:<<
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_7770o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?3
?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_7929

inputs&
simple_rnn_cell_7854:@<"
simple_rnn_cell_7856:<&
simple_rnn_cell_7858:<<
identity??'simple_rnn_cell/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_7854simple_rnn_cell_7856simple_rnn_cell_7858*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????<:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_7814n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_7854simple_rnn_cell_7856simple_rnn_cell_7858*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_7866*
condR
while_cond_7865*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????<g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????<x
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????@
 
_user_specified_nameinputs
?<
?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_8113

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:@<=
/simple_rnn_cell_biasadd_readvariableop_resource:<B
0simple_rnn_cell_matmul_1_readvariableop_resource:<<
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@<*
dtype0?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_8047*
condR
while_cond_8046*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????<g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????<?
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
+
__inference__destroyer_9646
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
)__inference_sequential_layer_call_fn_8642

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?]@
	unknown_4:@<
	unknown_5:<
	unknown_6:<<
	unknown_7:<
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_8404o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?+
?
while_body_8047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@<E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:<J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:<<
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@<C
5while_simple_rnn_cell_biasadd_readvariableop_resource:<H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:<<??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@<*
dtype0?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:<*
dtype0?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:<<*
dtype0?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????<?

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
ؿ
?	
__inference__wrapped_model_7646
text_vectorization_inputZ
Vsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle[
Wsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	7
3sequential_text_vectorization_string_lookup_equal_y:
6sequential_text_vectorization_string_lookup_selectv2_t	=
*sequential_embedding_embedding_lookup_7529:	?]@V
Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:@<S
Esequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:<X
Fsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:<<A
/sequential_dense_matmul_readvariableop_resource:<>
0sequential_dense_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp?;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp?=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp?sequential/simple_rnn/while?Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2{
)sequential/text_vectorization/StringLowerStringLowertext_vectorization_input*'
_output_shapes
:??????????
0sequential/text_vectorization/StaticRegexReplaceStaticRegexReplace2sequential/text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
%sequential/text_vectorization/SqueezeSqueeze9sequential/text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????p
/sequential/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
7sequential/text_vectorization/StringSplit/StringSplitV2StringSplitV2.sequential/text_vectorization/Squeeze:output:08sequential/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
=sequential/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
?sequential/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
?sequential/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
7sequential/text_vectorization/StringSplit/strided_sliceStridedSliceAsequential/text_vectorization/StringSplit/StringSplitV2:indices:0Fsequential/text_vectorization/StringSplit/strided_slice/stack:output:0Hsequential/text_vectorization/StringSplit/strided_slice/stack_1:output:0Hsequential/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
?sequential/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Asequential/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Asequential/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9sequential/text_vectorization/StringSplit/strided_slice_1StridedSlice?sequential/text_vectorization/StringSplit/StringSplitV2:shape:0Hsequential/text_vectorization/StringSplit/strided_slice_1/stack:output:0Jsequential/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Jsequential/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
`sequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast@sequential/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
bsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastBsequential/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
jsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapedsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
jsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
isequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdssequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ssequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
nsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterrsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0wsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
isequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastpsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxdsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0usequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
jsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2qsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ssequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulmsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumfsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumfsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
msequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountdsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0usequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
gsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
bsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumtsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
ksequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
gsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
bsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2tsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Vsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle@sequential/text_vectorization/StringSplit/StringSplitV2:values:0Wsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
1sequential/text_vectorization/string_lookup/EqualEqual@sequential/text_vectorization/StringSplit/StringSplitV2:values:03sequential_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
4sequential/text_vectorization/string_lookup/SelectV2SelectV25sequential/text_vectorization/string_lookup/Equal:z:06sequential_text_vectorization_string_lookup_selectv2_tRsequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
4sequential/text_vectorization/string_lookup/IdentityIdentity=sequential/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????|
:sequential/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
2sequential/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
Asequential/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor;sequential/text_vectorization/RaggedToTensor/Const:output:0=sequential/text_vectorization/string_lookup/Identity:output:0Csequential/text_vectorization/RaggedToTensor/default_value:output:0Bsequential/text_vectorization/StringSplit/strided_slice_1:output:0@sequential/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_7529Jsequential/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*=
_class3
1/loc:@sequential/embedding/embedding_lookup/7529*+
_output_shapes
:?????????@*
dtype0?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/7529*+
_output_shapes
:?????????@?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@?
sequential/simple_rnn/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:s
)sequential/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#sequential/simple_rnn/strided_sliceStridedSlice$sequential/simple_rnn/Shape:output:02sequential/simple_rnn/strided_slice/stack:output:04sequential/simple_rnn/strided_slice/stack_1:output:04sequential/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<?
"sequential/simple_rnn/zeros/packedPack,sequential/simple_rnn/strided_slice:output:0-sequential/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential/simple_rnn/zerosFill+sequential/simple_rnn/zeros/packed:output:0*sequential/simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:?????????<y
$sequential/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
sequential/simple_rnn/transpose	Transpose9sequential/embedding/embedding_lookup/Identity_1:output:0-sequential/simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:?????????@p
sequential/simple_rnn/Shape_1Shape#sequential/simple_rnn/transpose:y:0*
T0*
_output_shapes
:u
+sequential/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential/simple_rnn/strided_slice_1StridedSlice&sequential/simple_rnn/Shape_1:output:04sequential/simple_rnn/strided_slice_1/stack:output:06sequential/simple_rnn/strided_slice_1/stack_1:output:06sequential/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#sequential/simple_rnn/TensorArrayV2TensorListReserve:sequential/simple_rnn/TensorArrayV2/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Ksequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/simple_rnn/transpose:y:0Tsequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???u
+sequential/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential/simple_rnn/strided_slice_2StridedSlice#sequential/simple_rnn/transpose:y:04sequential/simple_rnn/strided_slice_2/stack:output:06sequential/simple_rnn/strided_slice_2/stack_1:output:06sequential/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpDsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@<*
dtype0?
,sequential/simple_rnn/simple_rnn_cell/MatMulMatMul.sequential/simple_rnn/strided_slice_2:output:0Csequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
-sequential/simple_rnn/simple_rnn_cell/BiasAddBiasAdd6sequential/simple_rnn/simple_rnn_cell/MatMul:product:0Dsequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0?
.sequential/simple_rnn/simple_rnn_cell/MatMul_1MatMul$sequential/simple_rnn/zeros:output:0Esequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
)sequential/simple_rnn/simple_rnn_cell/addAddV26sequential/simple_rnn/simple_rnn_cell/BiasAdd:output:08sequential/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<?
*sequential/simple_rnn/simple_rnn_cell/TanhTanh-sequential/simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<?
3sequential/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
%sequential/simple_rnn/TensorArrayV2_1TensorListReserve<sequential/simple_rnn/TensorArrayV2_1/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???\
sequential/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????j
(sequential/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential/simple_rnn/whileWhile1sequential/simple_rnn/while/loop_counter:output:07sequential/simple_rnn/while/maximum_iterations:output:0#sequential/simple_rnn/time:output:0.sequential/simple_rnn/TensorArrayV2_1:handle:0$sequential/simple_rnn/zeros:output:0.sequential/simple_rnn/strided_slice_1:output:0Msequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *1
body)R'
%sequential_simple_rnn_while_body_7573*1
cond)R'
%sequential_simple_rnn_while_cond_7572*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
Fsequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
8sequential/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/simple_rnn/while:output:3Osequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????<*
element_dtype0~
+sequential/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????w
-sequential/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential/simple_rnn/strided_slice_3StridedSliceAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:04sequential/simple_rnn/strided_slice_3/stack:output:06sequential/simple_rnn/strided_slice_3/stack_1:output:06sequential/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_mask{
&sequential/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential/simple_rnn/transpose_1	TransposeAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/simple_rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????<?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0?
sequential/dense/MatMulMatMul.sequential/simple_rnn/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
sequential/dense/SoftmaxSoftmax!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"sequential/dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup=^sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<^sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp>^sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^sequential/simple_rnn/whileJ^sequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2|
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2z
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2~
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2:
sequential/simple_rnn/whilesequential/simple_rnn/while2?
Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:a ]
'
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_simple_rnn_layer_call_fn_9092
inputs_0
unknown:@<
	unknown_0:<
	unknown_1:<<
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_7929o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????@
"
_user_specified_name
inputs/0
?

?
?__inference_dense_layer_call_and_return_conditional_losses_9566

inputs0
matmul_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????<
 
_user_specified_nameinputs
?

?
.__inference_simple_rnn_cell_layer_call_fn_9594

inputs
states_0
unknown:@<
	unknown_0:<
	unknown_1:<<
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????<:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_7814o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????<q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????@:?????????<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????<
"
_user_specified_name
states/0
?+
?
while_body_9480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@<E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:<J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:<<
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@<C
5while_simple_rnn_cell_biasadd_readvariableop_resource:<H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:<<??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@<*
dtype0?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:<*
dtype0?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:<<*
dtype0?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????<?

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
?e
?
D__inference_sequential_layer_call_and_return_conditional_losses_8139

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	!
embedding_8003:	?]@!
simple_rnn_8114:@<
simple_rnn_8116:<!
simple_rnn_8118:<<

dense_8133:<

dense_8135:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?"simple_rnn/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2^
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_8003*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_8002?
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0simple_rnn_8114simple_rnn_8116simple_rnn_8118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_simple_rnn_layer_call_and_return_conditional_losses_8113?
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0
dense_8133
dense_8135*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8132u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_7814

inputs

states0
matmul_readvariableop_resource:@<-
biasadd_readvariableop_resource:<2
 matmul_1_readvariableop_resource:<<
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????<G
TanhTanhadd:z:0*
T0*'
_output_shapes
:?????????<W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????<Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????<?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????@:?????????<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????<
 
_user_specified_namestates
?+
?
while_body_9264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:@<E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:<J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:<<
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:@<C
5while_simple_rnn_cell_biasadd_readvariableop_resource:<H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:<<??,while/simple_rnn_cell/BiasAdd/ReadVariableOp?+while/simple_rnn_cell/MatMul/ReadVariableOp?-while/simple_rnn_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????@*
element_dtype0?
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@<*
dtype0?
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:<*
dtype0?
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:<<*
dtype0?
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :???{
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:?????????<?

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????<: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????<:

_output_shapes
: :

_output_shapes
: 
?<
?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_8293

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:@<=
/simple_rnn_cell_biasadd_readvariableop_resource:<B
0simple_rnn_cell_matmul_1_readvariableop_resource:<<
identity??&simple_rnn_cell/BiasAdd/ReadVariableOp?%simple_rnn_cell/MatMul/ReadVariableOp?'simple_rnn_cell/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask?
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@<*
dtype0?
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0?
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:<<*
dtype0?
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????<?
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:?????????<g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:?????????<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????<: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_8227*
condR
while_cond_8226*8
output_shapes'
%: : : : :?????????<: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????<   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????<g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????<?
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
]
text_vectorization_inputA
*serving_default_text_vectorization_input:0?????????;
dense2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
?
(iter

)beta_1

*beta_2
	+decay
,learning_ratemg mh!mi-mj.mk/mlvm vn!vo-vp.vq/vr"
	optimizer
J
1
-2
.3
/4
 5
!6"
trackable_list_wrapper
J
0
-1
.2
/3
 4
!5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_sequential_layer_call_fn_8162
)__inference_sequential_layer_call_fn_8617
)__inference_sequential_layer_call_fn_8642
)__inference_sequential_layer_call_fn_8452?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_sequential_layer_call_and_return_conditional_losses_8810
D__inference_sequential_layer_call_and_return_conditional_losses_8978
D__inference_sequential_layer_call_and_return_conditional_losses_8519
D__inference_sequential_layer_call_and_return_conditional_losses_8586?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
__inference__wrapped_model_7646text_vectorization_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
5serving_default"
signature_map
L
6lookup_table
7token_counts
8	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_9054?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
':%	?]@2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_embedding_layer_call_fn_9061?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_embedding_layer_call_and_return_conditional_losses_9070?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?

-kernel
.recurrent_kernel
/bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_simple_rnn_layer_call_fn_9081
)__inference_simple_rnn_layer_call_fn_9092
)__inference_simple_rnn_layer_call_fn_9103
)__inference_simple_rnn_layer_call_fn_9114?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9222
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9330
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9438
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9546?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:<2dense/kernel
:2
dense/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
?2?
$__inference_dense_layer_call_fn_9555?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_dense_layer_call_and_return_conditional_losses_9566?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
3:1@<2!simple_rnn/simple_rnn_cell/kernel
=:;<<2+simple_rnn/simple_rnn_cell/recurrent_kernel
-:+<2simple_rnn/simple_rnn_cell/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
"__inference_signature_wrapper_9005text_vectorization_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
j
R_initializer
S_create_resource
T_initialize
U_destroy_resourceR jCustom.StaticHashTable
O
V_create_resource
W_initialize
X_destroy_resourceR Z
tablest
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
.__inference_simple_rnn_cell_layer_call_fn_9580
.__inference_simple_rnn_cell_layer_call_fn_9594?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_9611
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_9628?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	^total
	_count
`	variables
a	keras_api"
_tf_keras_metric
^
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_9633?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_9641?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_9646?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_9651?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_9656?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_9661?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
^0
_1"
trackable_list_wrapper
-
`	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
b0
c1"
trackable_list_wrapper
-
e	variables"
_generic_user_object
,:*	?]@2Adam/embedding/embeddings/m
#:!<2Adam/dense/kernel/m
:2Adam/dense/bias/m
8:6@<2(Adam/simple_rnn/simple_rnn_cell/kernel/m
B:@<<22Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/m
2:0<2&Adam/simple_rnn/simple_rnn_cell/bias/m
,:*	?]@2Adam/embedding/embeddings/v
#:!<2Adam/dense/kernel/v
:2Adam/dense/bias/v
8:6@<2(Adam/simple_rnn/simple_rnn_cell/kernel/v
B:@<<22Adam/simple_rnn/simple_rnn_cell/recurrent_kernel/v
2:0<2&Adam/simple_rnn/simple_rnn_cell/bias/v
?B?
__inference_save_fn_9680checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_9688restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_55
__inference__creator_9633?

? 
? "? 5
__inference__creator_9651?

? 
? "? 7
__inference__destroyer_9646?

? 
? "? 7
__inference__destroyer_9661?

? 
? "? >
__inference__initializer_96416yz?

? 
? "? 9
__inference__initializer_9656?

? 
? "? ?
__inference__wrapped_model_7646~
6uvw-/. !A?>
7?4
2?/
text_vectorization_input?????????
? "-?*
(
dense?
dense?????????l
__inference_adapt_step_9054M7xC?@
9?6
4?1?
??????????IteratorSpec 
? "
 ?
?__inference_dense_layer_call_and_return_conditional_losses_9566\ !/?,
%?"
 ?
inputs?????????<
? "%?"
?
0?????????
? w
$__inference_dense_layer_call_fn_9555O !/?,
%?"
 ?
inputs?????????<
? "???????????
C__inference_embedding_layer_call_and_return_conditional_losses_9070_/?,
%?"
 ?
inputs?????????	
? ")?&
?
0?????????@
? ~
(__inference_embedding_layer_call_fn_9061R/?,
%?"
 ?
inputs?????????	
? "??????????@x
__inference_restore_fn_9688Y7K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_9680?7&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
D__inference_sequential_layer_call_and_return_conditional_losses_8519~
6uvw-/. !I?F
??<
2?/
text_vectorization_input?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_8586~
6uvw-/. !I?F
??<
2?/
text_vectorization_input?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_8810l
6uvw-/. !7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_8978l
6uvw-/. !7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
)__inference_sequential_layer_call_fn_8162q
6uvw-/. !I?F
??<
2?/
text_vectorization_input?????????
p 

 
? "???????????
)__inference_sequential_layer_call_fn_8452q
6uvw-/. !I?F
??<
2?/
text_vectorization_input?????????
p

 
? "???????????
)__inference_sequential_layer_call_fn_8617_
6uvw-/. !7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
)__inference_sequential_layer_call_fn_8642_
6uvw-/. !7?4
-?*
 ?
inputs?????????
p

 
? "???????????
"__inference_signature_wrapper_9005?
6uvw-/. !]?Z
? 
S?P
N
text_vectorization_input2?/
text_vectorization_input?????????"-?*
(
dense?
dense??????????
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_9611?-/.\?Y
R?O
 ?
inputs?????????@
'?$
"?
states/0?????????<
p 
? "R?O
H?E
?
0/0?????????<
$?!
?
0/1/0?????????<
? ?
I__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_9628?-/.\?Y
R?O
 ?
inputs?????????@
'?$
"?
states/0?????????<
p
? "R?O
H?E
?
0/0?????????<
$?!
?
0/1/0?????????<
? ?
.__inference_simple_rnn_cell_layer_call_fn_9580?-/.\?Y
R?O
 ?
inputs?????????@
'?$
"?
states/0?????????<
p 
? "D?A
?
0?????????<
"?
?
1/0?????????<?
.__inference_simple_rnn_cell_layer_call_fn_9594?-/.\?Y
R?O
 ?
inputs?????????@
'?$
"?
states/0?????????<
p
? "D?A
?
0?????????<
"?
?
1/0?????????<?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9222}-/.O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p 

 
? "%?"
?
0?????????<
? ?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9330}-/.O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p

 
? "%?"
?
0?????????<
? ?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9438m-/.??<
5?2
$?!
inputs?????????@

 
p 

 
? "%?"
?
0?????????<
? ?
D__inference_simple_rnn_layer_call_and_return_conditional_losses_9546m-/.??<
5?2
$?!
inputs?????????@

 
p

 
? "%?"
?
0?????????<
? ?
)__inference_simple_rnn_layer_call_fn_9081p-/.O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p 

 
? "??????????<?
)__inference_simple_rnn_layer_call_fn_9092p-/.O?L
E?B
4?1
/?,
inputs/0??????????????????@

 
p

 
? "??????????<?
)__inference_simple_rnn_layer_call_fn_9103`-/.??<
5?2
$?!
inputs?????????@

 
p 

 
? "??????????<?
)__inference_simple_rnn_layer_call_fn_9114`-/.??<
5?2
$?!
inputs?????????@

 
p

 
? "??????????<