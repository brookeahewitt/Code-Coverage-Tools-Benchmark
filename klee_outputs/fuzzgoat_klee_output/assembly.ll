; ModuleID = '/home/brooke/Code-Coverage-Tools-Benchmark/klee_build/fuzzgoat_klee.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._json_value = type { %struct._json_value*, i32, %union.anon, %union.anon.2 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i8* }
%union.anon.2 = type { %struct._json_value* }
%struct.anon.0 = type { i32, %struct._json_object_entry* }
%struct._json_object_entry = type { i8*, i32, %struct._json_value* }
%struct.anon.1 = type { i32, %struct._json_value** }
%struct.json_settings = type { i64, i32, i8* (i64, i32, i8*)*, void (i8*, i8*)*, i8*, i64 }
%struct.json_state = type { i64, i32, i64, %struct.json_settings, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"input_json\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"int: %10ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"double: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"string: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"bool: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"object[%d].name = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"array\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1.10 = private unnamed_addr constant [36 x i8] c"Unexpected EOF in string (at %d:%d)\00", align 1
@.str.2.11 = private unnamed_addr constant [40 x i8] c"Invalid character value `%c` (at %d:%d)\00", align 1
@.str.3.12 = private unnamed_addr constant [39 x i8] c"%d:%d: Unexpected EOF in block comment\00", align 1
@.str.4.13 = private unnamed_addr constant [32 x i8] c"%d:%d: Comment not allowed here\00", align 1
@.str.5.14 = private unnamed_addr constant [22 x i8] c"%d:%d: EOF unexpected\00", align 1
@.str.6.15 = private unnamed_addr constant [51 x i8] c"%d:%d: Unexpected `%c` in comment opening sequence\00", align 1
@.str.7.16 = private unnamed_addr constant [30 x i8] c"%d:%d: Trailing garbage: `%c`\00", align 1
@.str.8.17 = private unnamed_addr constant [20 x i8] c"%d:%d: Unexpected ]\00", align 1
@.str.9.18 = private unnamed_addr constant [28 x i8] c"%d:%d: Expected , before %c\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"%d:%d: Expected : before %c\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"%d:%d: Unexpected %c when seeking value\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%d:%d: Expected , before \22\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%d:%d: Unexpected `%c` in object\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%d:%d: Unexpected `0` before `%c`\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"%d:%d: Expected digit before `.`\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"%d:%d: Expected digit after `.`\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%d:%d: Expected digit after `e`\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"%d:%d: Unknown value\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"%d:%d: Too long (caught overflow)\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@json_value_none = dso_local constant %struct._json_value zeroinitializer, align 8, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !140 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._json_value*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !145, metadata !DIExpression()), !dbg !147
  store i32 512, i32* %2, align 4, !dbg !147
  store i8* null, i8** %3, align 8, !dbg !148
  %6 = alloca i8, i64 512, align 16, !dbg !148
  call void @llvm.dbg.declare(metadata i8* %6, metadata !149, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i8** %4, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata %struct._json_value** %5, metadata !156, metadata !DIExpression()), !dbg !198
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 512, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !199
  %7 = getelementptr inbounds i8, i8* %6, i64 511, !dbg !200
  store i8 0, i8* %7, align 1, !dbg !201
  store i8* %6, i8** %4, align 8, !dbg !202
  %8 = load i8*, i8** %4, align 8, !dbg !203
  %9 = call %struct._json_value* @json_parse(i8* noundef %8, i64 noundef 511), !dbg !204
  store %struct._json_value* %9, %struct._json_value** %5, align 8, !dbg !205
  %10 = load %struct._json_value*, %struct._json_value** %5, align 8, !dbg !206
  %11 = icmp ne %struct._json_value* %10, null, !dbg !208
  br i1 %11, label %12, label %15, !dbg !209

12:                                               ; preds = %0
  %13 = load %struct._json_value*, %struct._json_value** %5, align 8, !dbg !210
  call void @process_value(%struct._json_value* noundef %13, i32 noundef 0), !dbg !212
  %14 = load %struct._json_value*, %struct._json_value** %5, align 8, !dbg !213
  call void @json_value_free(%struct._json_value* noundef %14), !dbg !214
  br label %15, !dbg !215

15:                                               ; preds = %12, %0
  store i32 0, i32* %1, align 4, !dbg !216
  %16 = load i8*, i8** %3, align 8, !dbg !217
  %17 = load i32, i32* %1, align 4, !dbg !217
  ret i32 %17, !dbg !217
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @process_value(%struct._json_value* noundef %0, i32 noundef %1) #0 !dbg !218 {
  %3 = alloca %struct._json_value*, align 8
  %4 = alloca i32, align 4
  store %struct._json_value* %0, %struct._json_value** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._json_value** %3, metadata !221, metadata !DIExpression()), !dbg !222
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !223, metadata !DIExpression()), !dbg !224
  %5 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !225
  %6 = icmp eq %struct._json_value* %5, null, !dbg !227
  br i1 %6, label %53, label %7, !dbg !228

7:                                                ; preds = %2
  %8 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !229
  %9 = getelementptr inbounds %struct._json_value, %struct._json_value* %8, i32 0, i32 1, !dbg !231
  %10 = load i32, i32* %9, align 8, !dbg !231
  %11 = icmp ne i32 %10, 1, !dbg !232
  br i1 %11, label %12, label %14, !dbg !233

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4, !dbg !234
  call void @print_depth_shift(i32 noundef %13), !dbg !236
  br label %14, !dbg !237

14:                                               ; preds = %12, %7
  %15 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !238
  %16 = getelementptr inbounds %struct._json_value, %struct._json_value* %15, i32 0, i32 1, !dbg !239
  %17 = load i32, i32* %16, align 8, !dbg !239
  switch i32 %17, label %53 [
    i32 0, label %18
    i32 1, label %20
    i32 2, label %24
    i32 3, label %28
    i32 4, label %34
    i32 5, label %40
    i32 6, label %47
  ], !dbg !240

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !241
  br label %53, !dbg !243

20:                                               ; preds = %14
  %21 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !244
  %22 = load i32, i32* %4, align 4, !dbg !245
  %23 = add nsw i32 %22, 1, !dbg !246
  call void @process_object(%struct._json_value* noundef %21, i32 noundef %23), !dbg !247
  br label %53, !dbg !248

24:                                               ; preds = %14
  %25 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !249
  %26 = load i32, i32* %4, align 4, !dbg !250
  %27 = add nsw i32 %26, 1, !dbg !251
  call void @process_array(%struct._json_value* noundef %25, i32 noundef %27), !dbg !252
  br label %53, !dbg !253

28:                                               ; preds = %14
  %29 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !254
  %30 = getelementptr inbounds %struct._json_value, %struct._json_value* %29, i32 0, i32 2, !dbg !255
  %31 = bitcast %union.anon* %30 to i64*, !dbg !256
  %32 = load i64, i64* %31, align 8, !dbg !256
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %32), !dbg !257
  br label %53, !dbg !258

34:                                               ; preds = %14
  %35 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !259
  %36 = getelementptr inbounds %struct._json_value, %struct._json_value* %35, i32 0, i32 2, !dbg !260
  %37 = bitcast %union.anon* %36 to double*, !dbg !261
  %38 = load double, double* %37, align 8, !dbg !261
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), double noundef %38), !dbg !262
  br label %53, !dbg !263

40:                                               ; preds = %14
  %41 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !264
  %42 = getelementptr inbounds %struct._json_value, %struct._json_value* %41, i32 0, i32 2, !dbg !265
  %43 = bitcast %union.anon* %42 to %struct.anon*, !dbg !266
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1, !dbg !267
  %45 = load i8*, i8** %44, align 8, !dbg !267
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef %45), !dbg !268
  br label %53, !dbg !269

47:                                               ; preds = %14
  %48 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !270
  %49 = getelementptr inbounds %struct._json_value, %struct._json_value* %48, i32 0, i32 2, !dbg !271
  %50 = bitcast %union.anon* %49 to i32*, !dbg !272
  %51 = load i32, i32* %50, align 8, !dbg !272
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 noundef %51), !dbg !273
  br label %53, !dbg !274

53:                                               ; preds = %2, %14, %47, %40, %34, %28, %24, %20, %18
  ret void, !dbg !275
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @print_depth_shift(i32 noundef %0) #0 !dbg !276 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i32* %3, metadata !281, metadata !DIExpression()), !dbg !282
  store i32 0, i32* %3, align 4, !dbg !283
  br label %4, !dbg !285

4:                                                ; preds = %8, %1
  %5 = load i32, i32* %3, align 4, !dbg !286
  %6 = load i32, i32* %2, align 4, !dbg !288
  %7 = icmp slt i32 %5, %6, !dbg !289
  br i1 %7, label %8, label %12, !dbg !290

8:                                                ; preds = %4
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !291
  %10 = load i32, i32* %3, align 4, !dbg !293
  %11 = add nsw i32 %10, 1, !dbg !293
  store i32 %11, i32* %3, align 4, !dbg !293
  br label %4, !dbg !294, !llvm.loop !295

12:                                               ; preds = %4
  ret void, !dbg !298
}

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal void @process_object(%struct._json_value* noundef %0, i32 noundef %1) #0 !dbg !299 {
  %3 = alloca %struct._json_value*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._json_value* %0, %struct._json_value** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._json_value** %3, metadata !300, metadata !DIExpression()), !dbg !301
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata i32* %5, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata i32* %6, metadata !306, metadata !DIExpression()), !dbg !307
  %7 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !308
  %8 = icmp eq %struct._json_value* %7, null, !dbg !310
  br i1 %8, label %47, label %9, !dbg !311

9:                                                ; preds = %2
  %10 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !312
  %11 = getelementptr inbounds %struct._json_value, %struct._json_value* %10, i32 0, i32 2, !dbg !313
  %12 = bitcast %union.anon* %11 to %struct.anon.0*, !dbg !314
  %13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 0, !dbg !315
  %14 = load i32, i32* %13, align 8, !dbg !315
  store i32 %14, i32* %5, align 4, !dbg !316
  store i32 0, i32* %6, align 4, !dbg !317
  br label %15, !dbg !319

15:                                               ; preds = %19, %9
  %16 = load i32, i32* %6, align 4, !dbg !320
  %17 = load i32, i32* %5, align 4, !dbg !322
  %18 = icmp slt i32 %16, %17, !dbg !323
  br i1 %18, label %19, label %47, !dbg !324

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4, !dbg !325
  call void @print_depth_shift(i32 noundef %20), !dbg !327
  %21 = load i32, i32* %6, align 4, !dbg !328
  %22 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !329
  %23 = getelementptr inbounds %struct._json_value, %struct._json_value* %22, i32 0, i32 2, !dbg !330
  %24 = bitcast %union.anon* %23 to %struct.anon.0*, !dbg !331
  %25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %24, i32 0, i32 1, !dbg !332
  %26 = load %struct._json_object_entry*, %struct._json_object_entry** %25, align 8, !dbg !332
  %27 = load i32, i32* %6, align 4, !dbg !333
  %28 = sext i32 %27 to i64, !dbg !329
  %29 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %26, i64 %28, !dbg !329
  %30 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %29, i32 0, i32 0, !dbg !334
  %31 = load i8*, i8** %30, align 8, !dbg !334
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef %21, i8* noundef %31), !dbg !335
  %33 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !336
  %34 = getelementptr inbounds %struct._json_value, %struct._json_value* %33, i32 0, i32 2, !dbg !337
  %35 = bitcast %union.anon* %34 to %struct.anon.0*, !dbg !338
  %36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %35, i32 0, i32 1, !dbg !339
  %37 = load %struct._json_object_entry*, %struct._json_object_entry** %36, align 8, !dbg !339
  %38 = load i32, i32* %6, align 4, !dbg !340
  %39 = sext i32 %38 to i64, !dbg !336
  %40 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %37, i64 %39, !dbg !336
  %41 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %40, i32 0, i32 2, !dbg !341
  %42 = load %struct._json_value*, %struct._json_value** %41, align 8, !dbg !341
  %43 = load i32, i32* %4, align 4, !dbg !342
  %44 = add nsw i32 %43, 1, !dbg !343
  call void @process_value(%struct._json_value* noundef %42, i32 noundef %44), !dbg !344
  %45 = load i32, i32* %6, align 4, !dbg !345
  %46 = add nsw i32 %45, 1, !dbg !345
  store i32 %46, i32* %6, align 4, !dbg !345
  br label %15, !dbg !346, !llvm.loop !347

47:                                               ; preds = %2, %15
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_array(%struct._json_value* noundef %0, i32 noundef %1) #0 !dbg !350 {
  %3 = alloca %struct._json_value*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._json_value* %0, %struct._json_value** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._json_value** %3, metadata !351, metadata !DIExpression()), !dbg !352
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata i32* %5, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %6, metadata !357, metadata !DIExpression()), !dbg !358
  %7 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !359
  %8 = icmp eq %struct._json_value* %7, null, !dbg !361
  br i1 %8, label %33, label %9, !dbg !362

9:                                                ; preds = %2
  %10 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !363
  %11 = getelementptr inbounds %struct._json_value, %struct._json_value* %10, i32 0, i32 2, !dbg !364
  %12 = bitcast %union.anon* %11 to %struct.anon.1*, !dbg !365
  %13 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %12, i32 0, i32 0, !dbg !366
  %14 = load i32, i32* %13, align 8, !dbg !366
  store i32 %14, i32* %5, align 4, !dbg !367
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)), !dbg !368
  store i32 0, i32* %6, align 4, !dbg !369
  br label %16, !dbg !371

16:                                               ; preds = %20, %9
  %17 = load i32, i32* %6, align 4, !dbg !372
  %18 = load i32, i32* %5, align 4, !dbg !374
  %19 = icmp slt i32 %17, %18, !dbg !375
  br i1 %19, label %20, label %33, !dbg !376

20:                                               ; preds = %16
  %21 = load %struct._json_value*, %struct._json_value** %3, align 8, !dbg !377
  %22 = getelementptr inbounds %struct._json_value, %struct._json_value* %21, i32 0, i32 2, !dbg !379
  %23 = bitcast %union.anon* %22 to %struct.anon.1*, !dbg !380
  %24 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %23, i32 0, i32 1, !dbg !381
  %25 = load %struct._json_value**, %struct._json_value*** %24, align 8, !dbg !381
  %26 = load i32, i32* %6, align 4, !dbg !382
  %27 = sext i32 %26 to i64, !dbg !377
  %28 = getelementptr inbounds %struct._json_value*, %struct._json_value** %25, i64 %27, !dbg !377
  %29 = load %struct._json_value*, %struct._json_value** %28, align 8, !dbg !377
  %30 = load i32, i32* %4, align 4, !dbg !383
  call void @process_value(%struct._json_value* noundef %29, i32 noundef %30), !dbg !384
  %31 = load i32, i32* %6, align 4, !dbg !385
  %32 = add nsw i32 %31, 1, !dbg !385
  store i32 %32, i32* %6, align 4, !dbg !385
  br label %16, !dbg !386, !llvm.loop !387

33:                                               ; preds = %2, %16
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @json_value_free_ex(%struct.json_settings* noundef %0, %struct._json_value* noundef %1) #0 !dbg !390 {
  %3 = alloca %struct.json_settings*, align 8
  %4 = alloca %struct._json_value*, align 8
  %5 = alloca %struct._json_value*, align 8
  %6 = alloca i8*, align 8
  store %struct.json_settings* %0, %struct.json_settings** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.json_settings** %3, metadata !411, metadata !DIExpression()), !dbg !412
  store %struct._json_value* %1, %struct._json_value** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._json_value** %4, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata %struct._json_value** %5, metadata !415, metadata !DIExpression()), !dbg !416
  %7 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !417
  %8 = icmp ne %struct._json_value* %7, null, !dbg !417
  br i1 %8, label %9, label %141, !dbg !419

9:                                                ; preds = %2
  %10 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !420
  %11 = getelementptr inbounds %struct._json_value, %struct._json_value* %10, i32 0, i32 0, !dbg !421
  store %struct._json_value* null, %struct._json_value** %11, align 8, !dbg !422
  br label %12, !dbg !423

12:                                               ; preds = %128, %74, %39, %9
  %13 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !424
  %14 = icmp ne %struct._json_value* %13, null, !dbg !423
  br i1 %14, label %15, label %141, !dbg !423

15:                                               ; preds = %12
  %16 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !425
  %17 = getelementptr inbounds %struct._json_value, %struct._json_value* %16, i32 0, i32 1, !dbg !427
  %18 = load i32, i32* %17, align 8, !dbg !427
  switch i32 %18, label %128 [
    i32 2, label %19
    i32 1, label %54
    i32 5, label %90
  ], !dbg !428

19:                                               ; preds = %15
  %20 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !429
  %21 = getelementptr inbounds %struct._json_value, %struct._json_value* %20, i32 0, i32 2, !dbg !432
  %22 = bitcast %union.anon* %21 to %struct.anon.1*, !dbg !433
  %23 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %22, i32 0, i32 0, !dbg !434
  %24 = load i32, i32* %23, align 8, !dbg !434
  %25 = icmp ne i32 %24, 0, !dbg !429
  br i1 %25, label %39, label %26, !dbg !435

26:                                               ; preds = %19
  %27 = load %struct.json_settings*, %struct.json_settings** %3, align 8, !dbg !436
  %28 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %27, i32 0, i32 3, !dbg !438
  %29 = load void (i8*, i8*)*, void (i8*, i8*)** %28, align 8, !dbg !438
  %30 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !439
  %31 = getelementptr inbounds %struct._json_value, %struct._json_value* %30, i32 0, i32 2, !dbg !440
  %32 = bitcast %union.anon* %31 to %struct.anon.1*, !dbg !441
  %33 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %32, i32 0, i32 1, !dbg !442
  %34 = load %struct._json_value**, %struct._json_value*** %33, align 8, !dbg !442
  %35 = bitcast %struct._json_value** %34 to i8*, !dbg !439
  %36 = load %struct.json_settings*, %struct.json_settings** %3, align 8, !dbg !443
  %37 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %36, i32 0, i32 4, !dbg !444
  %38 = load i8*, i8** %37, align 8, !dbg !444
  call void %29(i8* noundef %35, i8* noundef %38), !dbg !436
  br label %128, !dbg !445

39:                                               ; preds = %19
  %40 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !446
  %41 = getelementptr inbounds %struct._json_value, %struct._json_value* %40, i32 0, i32 2, !dbg !447
  %42 = bitcast %union.anon* %41 to %struct.anon.1*, !dbg !448
  %43 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %42, i32 0, i32 1, !dbg !449
  %44 = load %struct._json_value**, %struct._json_value*** %43, align 8, !dbg !449
  %45 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !450
  %46 = getelementptr inbounds %struct._json_value, %struct._json_value* %45, i32 0, i32 2, !dbg !451
  %47 = bitcast %union.anon* %46 to %struct.anon.1*, !dbg !452
  %48 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %47, i32 0, i32 0, !dbg !453
  %49 = load i32, i32* %48, align 8, !dbg !454
  %50 = add i32 %49, -1, !dbg !454
  store i32 %50, i32* %48, align 8, !dbg !454
  %51 = zext i32 %50 to i64, !dbg !446
  %52 = getelementptr inbounds %struct._json_value*, %struct._json_value** %44, i64 %51, !dbg !446
  %53 = load %struct._json_value*, %struct._json_value** %52, align 8, !dbg !446
  store %struct._json_value* %53, %struct._json_value** %4, align 8, !dbg !455
  br label %12, !dbg !456, !llvm.loop !457

54:                                               ; preds = %15
  %55 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !459
  %56 = getelementptr inbounds %struct._json_value, %struct._json_value* %55, i32 0, i32 2, !dbg !461
  %57 = bitcast %union.anon* %56 to %struct.anon.0*, !dbg !462
  %58 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %57, i32 0, i32 0, !dbg !463
  %59 = load i32, i32* %58, align 8, !dbg !463
  %60 = icmp ne i32 %59, 0, !dbg !459
  br i1 %60, label %74, label %61, !dbg !464

61:                                               ; preds = %54
  %62 = load %struct.json_settings*, %struct.json_settings** %3, align 8, !dbg !465
  %63 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %62, i32 0, i32 3, !dbg !467
  %64 = load void (i8*, i8*)*, void (i8*, i8*)** %63, align 8, !dbg !467
  %65 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !468
  %66 = getelementptr inbounds %struct._json_value, %struct._json_value* %65, i32 0, i32 2, !dbg !469
  %67 = bitcast %union.anon* %66 to %struct.anon.0*, !dbg !470
  %68 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %67, i32 0, i32 1, !dbg !471
  %69 = load %struct._json_object_entry*, %struct._json_object_entry** %68, align 8, !dbg !471
  %70 = bitcast %struct._json_object_entry* %69 to i8*, !dbg !468
  %71 = load %struct.json_settings*, %struct.json_settings** %3, align 8, !dbg !472
  %72 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %71, i32 0, i32 4, !dbg !473
  %73 = load i8*, i8** %72, align 8, !dbg !473
  call void %64(i8* noundef %70, i8* noundef %73), !dbg !465
  br label %128, !dbg !474

74:                                               ; preds = %54
  %75 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !475
  %76 = getelementptr inbounds %struct._json_value, %struct._json_value* %75, i32 0, i32 2, !dbg !476
  %77 = bitcast %union.anon* %76 to %struct.anon.0*, !dbg !477
  %78 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %77, i32 0, i32 1, !dbg !478
  %79 = load %struct._json_object_entry*, %struct._json_object_entry** %78, align 8, !dbg !478
  %80 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !479
  %81 = getelementptr inbounds %struct._json_value, %struct._json_value* %80, i32 0, i32 2, !dbg !480
  %82 = bitcast %union.anon* %81 to %struct.anon.0*, !dbg !481
  %83 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %82, i32 0, i32 0, !dbg !482
  %84 = load i32, i32* %83, align 8, !dbg !483
  %85 = add i32 %84, -1, !dbg !483
  store i32 %85, i32* %83, align 8, !dbg !483
  %86 = zext i32 %84 to i64, !dbg !475
  %87 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %79, i64 %86, !dbg !475
  %88 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %87, i32 0, i32 2, !dbg !484
  %89 = load %struct._json_value*, %struct._json_value** %88, align 8, !dbg !484
  store %struct._json_value* %89, %struct._json_value** %4, align 8, !dbg !485
  br label %12, !dbg !486, !llvm.loop !457

90:                                               ; preds = %15
  %91 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !487
  %92 = getelementptr inbounds %struct._json_value, %struct._json_value* %91, i32 0, i32 2, !dbg !489
  %93 = bitcast %union.anon* %92 to %struct.anon*, !dbg !490
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 0, !dbg !491
  %95 = load i32, i32* %94, align 8, !dbg !491
  %96 = icmp ne i32 %95, 0, !dbg !487
  br i1 %96, label %104, label %97, !dbg !492

97:                                               ; preds = %90
  %98 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !493
  %99 = getelementptr inbounds %struct._json_value, %struct._json_value* %98, i32 0, i32 2, !dbg !495
  %100 = bitcast %union.anon* %99 to %struct.anon*, !dbg !496
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 1, !dbg !497
  %102 = load i8*, i8** %101, align 8, !dbg !498
  %103 = getelementptr inbounds i8, i8* %102, i32 -1, !dbg !498
  store i8* %103, i8** %101, align 8, !dbg !498
  br label %104, !dbg !499

104:                                              ; preds = %97, %90
  %105 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !500
  %106 = getelementptr inbounds %struct._json_value, %struct._json_value* %105, i32 0, i32 2, !dbg !502
  %107 = bitcast %union.anon* %106 to %struct.anon*, !dbg !503
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 0, !dbg !504
  %109 = load i32, i32* %108, align 8, !dbg !504
  %110 = icmp eq i32 %109, 1, !dbg !505
  br i1 %110, label %111, label %116, !dbg !506

111:                                              ; preds = %104
  call void @llvm.dbg.declare(metadata i8** %6, metadata !507, metadata !DIExpression()), !dbg !509
  store i8* null, i8** %6, align 8, !dbg !509
  %112 = load i8*, i8** %6, align 8, !dbg !510
  %113 = load i8, i8* %112, align 1, !dbg !511
  %114 = sext i8 %113 to i32, !dbg !511
  %115 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 noundef %114), !dbg !512
  br label %116, !dbg !513

116:                                              ; preds = %111, %104
  %117 = load %struct.json_settings*, %struct.json_settings** %3, align 8, !dbg !514
  %118 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %117, i32 0, i32 3, !dbg !515
  %119 = load void (i8*, i8*)*, void (i8*, i8*)** %118, align 8, !dbg !515
  %120 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !516
  %121 = getelementptr inbounds %struct._json_value, %struct._json_value* %120, i32 0, i32 2, !dbg !517
  %122 = bitcast %union.anon* %121 to %struct.anon*, !dbg !518
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %122, i32 0, i32 1, !dbg !519
  %124 = load i8*, i8** %123, align 8, !dbg !519
  %125 = load %struct.json_settings*, %struct.json_settings** %3, align 8, !dbg !520
  %126 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %125, i32 0, i32 4, !dbg !521
  %127 = load i8*, i8** %126, align 8, !dbg !521
  call void %119(i8* noundef %124, i8* noundef %127), !dbg !514
  br label %128, !dbg !522

128:                                              ; preds = %15, %116, %61, %26
  %129 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !523
  store %struct._json_value* %129, %struct._json_value** %5, align 8, !dbg !524
  %130 = load %struct._json_value*, %struct._json_value** %4, align 8, !dbg !525
  %131 = getelementptr inbounds %struct._json_value, %struct._json_value* %130, i32 0, i32 0, !dbg !526
  %132 = load %struct._json_value*, %struct._json_value** %131, align 8, !dbg !526
  store %struct._json_value* %132, %struct._json_value** %4, align 8, !dbg !527
  %133 = load %struct.json_settings*, %struct.json_settings** %3, align 8, !dbg !528
  %134 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %133, i32 0, i32 3, !dbg !529
  %135 = load void (i8*, i8*)*, void (i8*, i8*)** %134, align 8, !dbg !529
  %136 = load %struct._json_value*, %struct._json_value** %5, align 8, !dbg !530
  %137 = bitcast %struct._json_value* %136 to i8*, !dbg !530
  %138 = load %struct.json_settings*, %struct.json_settings** %3, align 8, !dbg !531
  %139 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %138, i32 0, i32 4, !dbg !532
  %140 = load i8*, i8** %139, align 8, !dbg !532
  call void %135(i8* noundef %137, i8* noundef %140), !dbg !528
  br label %12, !dbg !423, !llvm.loop !457

141:                                              ; preds = %2, %12
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._json_value* @json_parse_ex(%struct.json_settings* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) #0 !dbg !534 {
  %5 = alloca %struct._json_value*, align 8
  %6 = alloca %struct.json_settings*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca %struct._json_value*, align 8
  %13 = alloca %struct._json_value*, align 8
  %14 = alloca %struct._json_value*, align 8
  %15 = alloca %struct.json_state, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca %struct._json_value*, align 8
  store %struct.json_settings* %0, %struct.json_settings** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.json_settings** %6, metadata !539, metadata !DIExpression()), !dbg !540
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !541, metadata !DIExpression()), !dbg !542
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !543, metadata !DIExpression()), !dbg !544
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata [128 x i8]* %10, metadata !547, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata i8** %11, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata %struct._json_value** %12, metadata !554, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.declare(metadata %struct._json_value** %13, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata %struct._json_value** %14, metadata !558, metadata !DIExpression()), !dbg !559
  store %struct._json_value* null, %struct._json_value** %14, align 8, !dbg !559
  call void @llvm.dbg.declare(metadata %struct.json_state* %15, metadata !560, metadata !DIExpression()), !dbg !572
  %30 = bitcast %struct.json_state* %15 to i8*, !dbg !572
  %31 = call i8* @memset(i8* %30, i32 0, i64 96), !dbg !572
  call void @llvm.dbg.declare(metadata i64* %16, metadata !573, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.declare(metadata i64* %17, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 0, i64* %17, align 8, !dbg !576
  call void @llvm.dbg.declare(metadata i64* %18, metadata !577, metadata !DIExpression()), !dbg !578
  store i64 0, i64* %18, align 8, !dbg !578
  call void @llvm.dbg.declare(metadata i64* %19, metadata !579, metadata !DIExpression()), !dbg !580
  store i64 0, i64* %19, align 8, !dbg !580
  %32 = load i64, i64* %8, align 8, !dbg !581
  %33 = icmp uge i64 %32, 3, !dbg !583
  br i1 %33, label %34, label %57, !dbg !584

34:                                               ; preds = %4
  %35 = load i8*, i8** %7, align 8, !dbg !585
  %36 = getelementptr inbounds i8, i8* %35, i64 0, !dbg !585
  %37 = load i8, i8* %36, align 1, !dbg !585
  %38 = zext i8 %37 to i32, !dbg !586
  %39 = icmp eq i32 %38, 239, !dbg !587
  br i1 %39, label %40, label %57, !dbg !588

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8, !dbg !589
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !589
  %43 = load i8, i8* %42, align 1, !dbg !589
  %44 = zext i8 %43 to i32, !dbg !590
  %45 = icmp eq i32 %44, 187, !dbg !591
  br i1 %45, label %46, label %57, !dbg !592

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8, !dbg !593
  %48 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !593
  %49 = load i8, i8* %48, align 1, !dbg !593
  %50 = zext i8 %49 to i32, !dbg !594
  %51 = icmp eq i32 %50, 191, !dbg !595
  br i1 %51, label %52, label %57, !dbg !596

52:                                               ; preds = %46
  %53 = load i8*, i8** %7, align 8, !dbg !597
  %54 = getelementptr inbounds i8, i8* %53, i64 3, !dbg !597
  store i8* %54, i8** %7, align 8, !dbg !597
  %55 = load i64, i64* %8, align 8, !dbg !599
  %56 = sub i64 %55, 3, !dbg !599
  store i64 %56, i64* %8, align 8, !dbg !599
  br label %57, !dbg !600

57:                                               ; preds = %52, %46, %40, %34, %4
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !601
  store i8 0, i8* %58, align 16, !dbg !602
  %59 = load i8*, i8** %7, align 8, !dbg !603
  %60 = load i64, i64* %8, align 8, !dbg !604
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !605
  store i8* %61, i8** %11, align 8, !dbg !606
  %62 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 3, !dbg !607
  %63 = bitcast %struct.json_settings* %62 to i8*, !dbg !608
  %64 = load %struct.json_settings*, %struct.json_settings** %6, align 8, !dbg !609
  %65 = bitcast %struct.json_settings* %64 to i8*, !dbg !608
  %66 = call i8* @memcpy(i8* %63, i8* %65, i64 48), !dbg !608
  %67 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 3, !dbg !610
  %68 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %67, i32 0, i32 2, !dbg !612
  %69 = load i8* (i64, i32, i8*)*, i8* (i64, i32, i8*)** %68, align 8, !dbg !612
  %70 = icmp ne i8* (i64, i32, i8*)* %69, null, !dbg !613
  br i1 %70, label %74, label %71, !dbg !614

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 3, !dbg !615
  %73 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %72, i32 0, i32 2, !dbg !616
  store i8* (i64, i32, i8*)* @default_alloc, i8* (i64, i32, i8*)** %73, align 8, !dbg !617
  br label %74, !dbg !618

74:                                               ; preds = %71, %57
  %75 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 3, !dbg !619
  %76 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %75, i32 0, i32 3, !dbg !621
  %77 = load void (i8*, i8*)*, void (i8*, i8*)** %76, align 8, !dbg !621
  %78 = icmp ne void (i8*, i8*)* %77, null, !dbg !622
  br i1 %78, label %82, label %79, !dbg !623

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 3, !dbg !624
  %81 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %80, i32 0, i32 3, !dbg !625
  store void (i8*, i8*)* @default_free, void (i8*, i8*)** %81, align 8, !dbg !626
  br label %82, !dbg !627

82:                                               ; preds = %79, %74
  %83 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 1, !dbg !628
  %84 = bitcast i32* %83 to i8*, !dbg !629
  %85 = call i8* @memset(i8* %84, i32 255, i64 4), !dbg !629
  %86 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 2, !dbg !630
  %87 = bitcast i64* %86 to i8*, !dbg !631
  %88 = call i8* @memset(i8* %87, i32 255, i64 8), !dbg !631
  %89 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 1, !dbg !632
  %90 = load i32, i32* %89, align 8, !dbg !633
  %91 = sub i32 %90, 8, !dbg !633
  store i32 %91, i32* %89, align 8, !dbg !633
  %92 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 2, !dbg !634
  %93 = load i64, i64* %92, align 8, !dbg !635
  %94 = sub i64 %93, 8, !dbg !635
  store i64 %94, i64* %92, align 8, !dbg !635
  %95 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !636
  store i32 1, i32* %95, align 8, !dbg !638
  br label %96, !dbg !639

96:                                               ; preds = %1455, %82
  %97 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !640
  %98 = load i32, i32* %97, align 8, !dbg !640
  %99 = icmp sge i32 %98, 0, !dbg !642
  br i1 %99, label %100, label %1460, !dbg !643

100:                                              ; preds = %96
  call void @llvm.dbg.declare(metadata i32* %20, metadata !644, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata i8* %21, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata i8* %22, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata i8* %23, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.declare(metadata i8* %24, metadata !654, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.declare(metadata i8** %25, metadata !656, metadata !DIExpression()), !dbg !657
  store i8* null, i8** %25, align 8, !dbg !657
  call void @llvm.dbg.declare(metadata i32* %26, metadata !658, metadata !DIExpression()), !dbg !659
  store i32 0, i32* %26, align 4, !dbg !659
  store %struct._json_value* null, %struct._json_value** %13, align 8, !dbg !660
  store %struct._json_value* null, %struct._json_value** %12, align 8, !dbg !661
  store i64 8, i64* %16, align 8, !dbg !662
  %101 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !663
  store i32 1, i32* %101, align 8, !dbg !664
  %102 = load i8*, i8** %7, align 8, !dbg !665
  %103 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !667
  store i8* %102, i8** %103, align 8, !dbg !668
  br label %104, !dbg !669

104:                                              ; preds = %1451, %100
  call void @llvm.dbg.declare(metadata i8* %27, metadata !670, metadata !DIExpression()), !dbg !673
  %105 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !674
  %106 = load i8*, i8** %105, align 8, !dbg !674
  %107 = load i8*, i8** %11, align 8, !dbg !675
  %108 = icmp eq i8* %106, %107, !dbg !676
  br i1 %108, label %114, label %109, !dbg !677

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !678
  %111 = load i8*, i8** %110, align 8, !dbg !678
  %112 = load i8, i8* %111, align 1, !dbg !679
  %113 = sext i8 %112 to i32, !dbg !679
  br label %114, !dbg !677

114:                                              ; preds = %104, %109
  %115 = phi i32 [ %113, %109 ], [ 0, %104 ], !dbg !677
  %116 = trunc i32 %115 to i8, !dbg !680
  store i8 %116, i8* %27, align 1, !dbg !673
  %117 = load i64, i64* %16, align 8, !dbg !681
  %118 = and i64 %117, 32, !dbg !683
  %119 = icmp ne i64 %118, 0, !dbg !683
  br i1 %119, label %120, label %617, !dbg !684

120:                                              ; preds = %114
  %121 = load i8, i8* %27, align 1, !dbg !685
  %122 = icmp ne i8 %121, 0, !dbg !685
  br i1 %122, label %130, label %123, !dbg !688

123:                                              ; preds = %120
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !689
  %125 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !691
  %126 = load i32, i32* %125, align 8, !dbg !691
  %127 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !691
  %128 = load i32, i32* %127, align 4, !dbg !691
  %129 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %124, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1.10, i64 0, i64 0), i32 noundef %126, i32 noundef %128) #8, !dbg !692
  br label %1479, !dbg !693

130:                                              ; preds = %120
  %131 = load i32, i32* %26, align 4, !dbg !694
  %132 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 1, !dbg !696
  %133 = load i32, i32* %132, align 8, !dbg !696
  %134 = icmp ugt i32 %131, %133, !dbg !697
  br i1 %134, label %1472, label %135, !dbg !698

135:                                              ; preds = %130
  %136 = load i64, i64* %16, align 8, !dbg !699
  %137 = and i64 %136, 16, !dbg !701
  %138 = icmp ne i64 %137, 0, !dbg !701
  br i1 %138, label %139, label %512, !dbg !702

139:                                              ; preds = %135
  %140 = load i64, i64* %16, align 8, !dbg !703
  %141 = and i64 %140, -17, !dbg !703
  store i64 %141, i64* %16, align 8, !dbg !703
  %142 = load i8, i8* %27, align 1, !dbg !705
  %143 = sext i8 %142 to i32, !dbg !705
  switch i32 %143, label %499 [
    i32 98, label %144
    i32 102, label %156
    i32 110, label %168
    i32 114, label %180
    i32 116, label %192
    i32 117, label %204
  ], !dbg !706

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !707
  %146 = load i32, i32* %145, align 8, !dbg !707
  %147 = icmp ne i32 %146, 0, !dbg !707
  br i1 %147, label %153, label %148, !dbg !711

148:                                              ; preds = %144
  %149 = load i8*, i8** %25, align 8, !dbg !707
  %150 = load i32, i32* %26, align 4, !dbg !707
  %151 = zext i32 %150 to i64, !dbg !707
  %152 = getelementptr inbounds i8, i8* %149, i64 %151, !dbg !707
  store i8 8, i8* %152, align 1, !dbg !707
  br label %153, !dbg !707

153:                                              ; preds = %148, %144
  %154 = load i32, i32* %26, align 4, !dbg !711
  %155 = add i32 %154, 1, !dbg !711
  store i32 %155, i32* %26, align 4, !dbg !711
  br label %1451, !dbg !712

156:                                              ; preds = %139
  %157 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !713
  %158 = load i32, i32* %157, align 8, !dbg !713
  %159 = icmp ne i32 %158, 0, !dbg !713
  br i1 %159, label %165, label %160, !dbg !716

160:                                              ; preds = %156
  %161 = load i8*, i8** %25, align 8, !dbg !713
  %162 = load i32, i32* %26, align 4, !dbg !713
  %163 = zext i32 %162 to i64, !dbg !713
  %164 = getelementptr inbounds i8, i8* %161, i64 %163, !dbg !713
  store i8 12, i8* %164, align 1, !dbg !713
  br label %165, !dbg !713

165:                                              ; preds = %160, %156
  %166 = load i32, i32* %26, align 4, !dbg !716
  %167 = add i32 %166, 1, !dbg !716
  store i32 %167, i32* %26, align 4, !dbg !716
  br label %1451, !dbg !717

168:                                              ; preds = %139
  %169 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !718
  %170 = load i32, i32* %169, align 8, !dbg !718
  %171 = icmp ne i32 %170, 0, !dbg !718
  br i1 %171, label %177, label %172, !dbg !721

172:                                              ; preds = %168
  %173 = load i8*, i8** %25, align 8, !dbg !718
  %174 = load i32, i32* %26, align 4, !dbg !718
  %175 = zext i32 %174 to i64, !dbg !718
  %176 = getelementptr inbounds i8, i8* %173, i64 %175, !dbg !718
  store i8 10, i8* %176, align 1, !dbg !718
  br label %177, !dbg !718

177:                                              ; preds = %172, %168
  %178 = load i32, i32* %26, align 4, !dbg !721
  %179 = add i32 %178, 1, !dbg !721
  store i32 %179, i32* %26, align 4, !dbg !721
  br label %1451, !dbg !722

180:                                              ; preds = %139
  %181 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !723
  %182 = load i32, i32* %181, align 8, !dbg !723
  %183 = icmp ne i32 %182, 0, !dbg !723
  br i1 %183, label %189, label %184, !dbg !726

184:                                              ; preds = %180
  %185 = load i8*, i8** %25, align 8, !dbg !723
  %186 = load i32, i32* %26, align 4, !dbg !723
  %187 = zext i32 %186 to i64, !dbg !723
  %188 = getelementptr inbounds i8, i8* %185, i64 %187, !dbg !723
  store i8 13, i8* %188, align 1, !dbg !723
  br label %189, !dbg !723

189:                                              ; preds = %184, %180
  %190 = load i32, i32* %26, align 4, !dbg !726
  %191 = add i32 %190, 1, !dbg !726
  store i32 %191, i32* %26, align 4, !dbg !726
  br label %1451, !dbg !727

192:                                              ; preds = %139
  %193 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !728
  %194 = load i32, i32* %193, align 8, !dbg !728
  %195 = icmp ne i32 %194, 0, !dbg !728
  br i1 %195, label %201, label %196, !dbg !731

196:                                              ; preds = %192
  %197 = load i8*, i8** %25, align 8, !dbg !728
  %198 = load i32, i32* %26, align 4, !dbg !728
  %199 = zext i32 %198 to i64, !dbg !728
  %200 = getelementptr inbounds i8, i8* %197, i64 %199, !dbg !728
  store i8 9, i8* %200, align 1, !dbg !728
  br label %201, !dbg !728

201:                                              ; preds = %196, %192
  %202 = load i32, i32* %26, align 4, !dbg !731
  %203 = add i32 %202, 1, !dbg !731
  store i32 %203, i32* %26, align 4, !dbg !731
  br label %1451, !dbg !732

204:                                              ; preds = %139
  %205 = load i8*, i8** %11, align 8, !dbg !733
  %206 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !735
  %207 = load i8*, i8** %206, align 8, !dbg !735
  %208 = ptrtoint i8* %205 to i64, !dbg !736
  %209 = ptrtoint i8* %207 to i64, !dbg !736
  %210 = sub i64 %208, %209, !dbg !736
  %211 = icmp slt i64 %210, 4, !dbg !737
  br i1 %211, label %244, label %212, !dbg !738

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !739
  %214 = load i8*, i8** %213, align 8, !dbg !740
  %215 = getelementptr inbounds i8, i8* %214, i32 1, !dbg !740
  store i8* %215, i8** %213, align 8, !dbg !740
  %216 = load i8, i8* %215, align 1, !dbg !741
  %217 = call zeroext i8 @hex_value(i8 noundef signext %216), !dbg !742
  store i8 %217, i8* %21, align 1, !dbg !743
  %218 = zext i8 %217 to i32, !dbg !744
  %219 = icmp eq i32 %218, 255, !dbg !745
  br i1 %219, label %244, label %220, !dbg !746

220:                                              ; preds = %212
  %221 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !747
  %222 = load i8*, i8** %221, align 8, !dbg !748
  %223 = getelementptr inbounds i8, i8* %222, i32 1, !dbg !748
  store i8* %223, i8** %221, align 8, !dbg !748
  %224 = load i8, i8* %223, align 1, !dbg !749
  %225 = call zeroext i8 @hex_value(i8 noundef signext %224), !dbg !750
  store i8 %225, i8* %22, align 1, !dbg !751
  %226 = zext i8 %225 to i32, !dbg !752
  %227 = icmp eq i32 %226, 255, !dbg !753
  br i1 %227, label %244, label %228, !dbg !754

228:                                              ; preds = %220
  %229 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !755
  %230 = load i8*, i8** %229, align 8, !dbg !756
  %231 = getelementptr inbounds i8, i8* %230, i32 1, !dbg !756
  store i8* %231, i8** %229, align 8, !dbg !756
  %232 = load i8, i8* %231, align 1, !dbg !757
  %233 = call zeroext i8 @hex_value(i8 noundef signext %232), !dbg !758
  store i8 %233, i8* %23, align 1, !dbg !759
  %234 = zext i8 %233 to i32, !dbg !760
  %235 = icmp eq i32 %234, 255, !dbg !761
  br i1 %235, label %244, label %236, !dbg !762

236:                                              ; preds = %228
  %237 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !763
  %238 = load i8*, i8** %237, align 8, !dbg !764
  %239 = getelementptr inbounds i8, i8* %238, i32 1, !dbg !764
  store i8* %239, i8** %237, align 8, !dbg !764
  %240 = load i8, i8* %239, align 1, !dbg !765
  %241 = call zeroext i8 @hex_value(i8 noundef signext %240), !dbg !766
  store i8 %241, i8* %24, align 1, !dbg !767
  %242 = zext i8 %241 to i32, !dbg !768
  %243 = icmp eq i32 %242, 255, !dbg !769
  br i1 %243, label %244, label %253, !dbg !770

244:                                              ; preds = %236, %228, %220, %212, %204
  %245 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !771
  %246 = load i8, i8* %27, align 1, !dbg !773
  %247 = sext i8 %246 to i32, !dbg !773
  %248 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !774
  %249 = load i32, i32* %248, align 8, !dbg !774
  %250 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !774
  %251 = load i32, i32* %250, align 4, !dbg !774
  %252 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %245, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2.11, i64 0, i64 0), i32 noundef %247, i32 noundef %249, i32 noundef %251) #8, !dbg !775
  br label %1479, !dbg !776

253:                                              ; preds = %236
  %254 = load i8, i8* %21, align 1, !dbg !777
  %255 = zext i8 %254 to i32, !dbg !777
  %256 = shl i32 %255, 4, !dbg !778
  %257 = load i8, i8* %22, align 1, !dbg !779
  %258 = zext i8 %257 to i32, !dbg !779
  %259 = or i32 %256, %258, !dbg !780
  %260 = trunc i32 %259 to i8, !dbg !781
  store i8 %260, i8* %21, align 1, !dbg !782
  %261 = load i8, i8* %23, align 1, !dbg !783
  %262 = zext i8 %261 to i32, !dbg !783
  %263 = shl i32 %262, 4, !dbg !784
  %264 = load i8, i8* %24, align 1, !dbg !785
  %265 = zext i8 %264 to i32, !dbg !785
  %266 = or i32 %263, %265, !dbg !786
  %267 = trunc i32 %266 to i8, !dbg !787
  store i8 %267, i8* %22, align 1, !dbg !788
  %268 = load i8, i8* %21, align 1, !dbg !789
  %269 = zext i8 %268 to i32, !dbg !789
  %270 = shl i32 %269, 8, !dbg !790
  %271 = load i8, i8* %22, align 1, !dbg !791
  %272 = zext i8 %271 to i32, !dbg !791
  %273 = or i32 %270, %272, !dbg !792
  store i32 %273, i32* %20, align 4, !dbg !793
  %274 = load i32, i32* %20, align 4, !dbg !794
  %275 = and i32 %274, 63488, !dbg !796
  %276 = icmp eq i32 %275, 55296, !dbg !797
  br i1 %276, label %277, label %368, !dbg !798

277:                                              ; preds = %253
  call void @llvm.dbg.declare(metadata i32* %28, metadata !799, metadata !DIExpression()), !dbg !801
  %278 = load i8*, i8** %11, align 8, !dbg !802
  %279 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !804
  %280 = load i8*, i8** %279, align 8, !dbg !804
  %281 = ptrtoint i8* %278 to i64, !dbg !805
  %282 = ptrtoint i8* %280 to i64, !dbg !805
  %283 = sub i64 %281, %282, !dbg !805
  %284 = icmp slt i64 %283, 6, !dbg !806
  br i1 %284, label %331, label %285, !dbg !807

285:                                              ; preds = %277
  %286 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !808
  %287 = load i8*, i8** %286, align 8, !dbg !809
  %288 = getelementptr inbounds i8, i8* %287, i32 1, !dbg !809
  store i8* %288, i8** %286, align 8, !dbg !809
  %289 = load i8, i8* %288, align 1, !dbg !810
  %290 = sext i8 %289 to i32, !dbg !811
  %291 = icmp ne i32 %290, 92, !dbg !812
  br i1 %291, label %331, label %292, !dbg !813

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !814
  %294 = load i8*, i8** %293, align 8, !dbg !815
  %295 = getelementptr inbounds i8, i8* %294, i32 1, !dbg !815
  store i8* %295, i8** %293, align 8, !dbg !815
  %296 = load i8, i8* %295, align 1, !dbg !816
  %297 = sext i8 %296 to i32, !dbg !817
  %298 = icmp ne i32 %297, 117, !dbg !818
  br i1 %298, label %331, label %299, !dbg !819

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !820
  %301 = load i8*, i8** %300, align 8, !dbg !821
  %302 = getelementptr inbounds i8, i8* %301, i32 1, !dbg !821
  store i8* %302, i8** %300, align 8, !dbg !821
  %303 = load i8, i8* %302, align 1, !dbg !822
  %304 = call zeroext i8 @hex_value(i8 noundef signext %303), !dbg !823
  store i8 %304, i8* %21, align 1, !dbg !824
  %305 = zext i8 %304 to i32, !dbg !825
  %306 = icmp eq i32 %305, 255, !dbg !826
  br i1 %306, label %331, label %307, !dbg !827

307:                                              ; preds = %299
  %308 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !828
  %309 = load i8*, i8** %308, align 8, !dbg !829
  %310 = getelementptr inbounds i8, i8* %309, i32 1, !dbg !829
  store i8* %310, i8** %308, align 8, !dbg !829
  %311 = load i8, i8* %310, align 1, !dbg !830
  %312 = call zeroext i8 @hex_value(i8 noundef signext %311), !dbg !831
  store i8 %312, i8* %22, align 1, !dbg !832
  %313 = zext i8 %312 to i32, !dbg !833
  %314 = icmp eq i32 %313, 255, !dbg !834
  br i1 %314, label %331, label %315, !dbg !835

315:                                              ; preds = %307
  %316 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !836
  %317 = load i8*, i8** %316, align 8, !dbg !837
  %318 = getelementptr inbounds i8, i8* %317, i32 1, !dbg !837
  store i8* %318, i8** %316, align 8, !dbg !837
  %319 = load i8, i8* %318, align 1, !dbg !838
  %320 = call zeroext i8 @hex_value(i8 noundef signext %319), !dbg !839
  store i8 %320, i8* %23, align 1, !dbg !840
  %321 = zext i8 %320 to i32, !dbg !841
  %322 = icmp eq i32 %321, 255, !dbg !842
  br i1 %322, label %331, label %323, !dbg !843

323:                                              ; preds = %315
  %324 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !844
  %325 = load i8*, i8** %324, align 8, !dbg !845
  %326 = getelementptr inbounds i8, i8* %325, i32 1, !dbg !845
  store i8* %326, i8** %324, align 8, !dbg !845
  %327 = load i8, i8* %326, align 1, !dbg !846
  %328 = call zeroext i8 @hex_value(i8 noundef signext %327), !dbg !847
  store i8 %328, i8* %24, align 1, !dbg !848
  %329 = zext i8 %328 to i32, !dbg !849
  %330 = icmp eq i32 %329, 255, !dbg !850
  br i1 %330, label %331, label %340, !dbg !851

331:                                              ; preds = %323, %315, %307, %299, %292, %285, %277
  %332 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !852
  %333 = load i8, i8* %27, align 1, !dbg !854
  %334 = sext i8 %333 to i32, !dbg !854
  %335 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !855
  %336 = load i32, i32* %335, align 8, !dbg !855
  %337 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !855
  %338 = load i32, i32* %337, align 4, !dbg !855
  %339 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %332, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2.11, i64 0, i64 0), i32 noundef %334, i32 noundef %336, i32 noundef %338) #8, !dbg !856
  br label %1479, !dbg !857

340:                                              ; preds = %323
  %341 = load i8, i8* %21, align 1, !dbg !858
  %342 = zext i8 %341 to i32, !dbg !858
  %343 = shl i32 %342, 4, !dbg !859
  %344 = load i8, i8* %22, align 1, !dbg !860
  %345 = zext i8 %344 to i32, !dbg !860
  %346 = or i32 %343, %345, !dbg !861
  %347 = trunc i32 %346 to i8, !dbg !862
  store i8 %347, i8* %21, align 1, !dbg !863
  %348 = load i8, i8* %23, align 1, !dbg !864
  %349 = zext i8 %348 to i32, !dbg !864
  %350 = shl i32 %349, 4, !dbg !865
  %351 = load i8, i8* %24, align 1, !dbg !866
  %352 = zext i8 %351 to i32, !dbg !866
  %353 = or i32 %350, %352, !dbg !867
  %354 = trunc i32 %353 to i8, !dbg !868
  store i8 %354, i8* %22, align 1, !dbg !869
  %355 = load i8, i8* %21, align 1, !dbg !870
  %356 = zext i8 %355 to i32, !dbg !870
  %357 = shl i32 %356, 8, !dbg !871
  %358 = load i8, i8* %22, align 1, !dbg !872
  %359 = zext i8 %358 to i32, !dbg !872
  %360 = or i32 %357, %359, !dbg !873
  store i32 %360, i32* %28, align 4, !dbg !874
  %361 = load i32, i32* %20, align 4, !dbg !875
  %362 = and i32 %361, 1023, !dbg !876
  %363 = shl i32 %362, 10, !dbg !877
  %364 = or i32 65536, %363, !dbg !878
  %365 = load i32, i32* %28, align 4, !dbg !879
  %366 = and i32 %365, 1023, !dbg !880
  %367 = or i32 %364, %366, !dbg !881
  store i32 %367, i32* %20, align 4, !dbg !882
  br label %368, !dbg !883

368:                                              ; preds = %340, %253
  %369 = load i32, i32* %20, align 4, !dbg !884
  %370 = icmp ule i32 %369, 127, !dbg !886
  br i1 %370, label %371, label %385, !dbg !887

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !888
  %373 = load i32, i32* %372, align 8, !dbg !888
  %374 = icmp ne i32 %373, 0, !dbg !888
  br i1 %374, label %382, label %375, !dbg !892

375:                                              ; preds = %371
  %376 = load i32, i32* %20, align 4, !dbg !888
  %377 = trunc i32 %376 to i8, !dbg !888
  %378 = load i8*, i8** %25, align 8, !dbg !888
  %379 = load i32, i32* %26, align 4, !dbg !888
  %380 = zext i32 %379 to i64, !dbg !888
  %381 = getelementptr inbounds i8, i8* %378, i64 %380, !dbg !888
  store i8 %377, i8* %381, align 1, !dbg !888
  br label %382, !dbg !888

382:                                              ; preds = %375, %371
  %383 = load i32, i32* %26, align 4, !dbg !892
  %384 = add i32 %383, 1, !dbg !892
  store i32 %384, i32* %26, align 4, !dbg !892
  br label %1451, !dbg !893

385:                                              ; preds = %368
  %386 = load i32, i32* %20, align 4, !dbg !894
  %387 = icmp ule i32 %386, 2047, !dbg !896
  br i1 %387, label %388, label %414, !dbg !897

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !898
  %390 = load i32, i32* %389, align 8, !dbg !898
  %391 = icmp ne i32 %390, 0, !dbg !901
  br i1 %391, label %392, label %395, !dbg !902

392:                                              ; preds = %388
  %393 = load i32, i32* %26, align 4, !dbg !903
  %394 = add i32 %393, 2, !dbg !903
  store i32 %394, i32* %26, align 4, !dbg !903
  br label %1451, !dbg !904

395:                                              ; preds = %388
  %396 = load i32, i32* %20, align 4, !dbg !905
  %397 = lshr i32 %396, 6, !dbg !907
  %398 = or i32 192, %397, !dbg !908
  %399 = trunc i32 %398 to i8, !dbg !909
  %400 = load i8*, i8** %25, align 8, !dbg !910
  %401 = load i32, i32* %26, align 4, !dbg !911
  %402 = add i32 %401, 1, !dbg !911
  store i32 %402, i32* %26, align 4, !dbg !911
  %403 = zext i32 %401 to i64, !dbg !910
  %404 = getelementptr inbounds i8, i8* %400, i64 %403, !dbg !910
  store i8 %399, i8* %404, align 1, !dbg !912
  %405 = load i32, i32* %20, align 4, !dbg !913
  %406 = and i32 %405, 63, !dbg !914
  %407 = or i32 128, %406, !dbg !915
  %408 = trunc i32 %407 to i8, !dbg !916
  %409 = load i8*, i8** %25, align 8, !dbg !917
  %410 = load i32, i32* %26, align 4, !dbg !918
  %411 = add i32 %410, 1, !dbg !918
  store i32 %411, i32* %26, align 4, !dbg !918
  %412 = zext i32 %410 to i64, !dbg !917
  %413 = getelementptr inbounds i8, i8* %409, i64 %412, !dbg !917
  store i8 %408, i8* %413, align 1, !dbg !919
  br label %1451

414:                                              ; preds = %385
  %415 = load i32, i32* %20, align 4, !dbg !920
  %416 = icmp ule i32 %415, 65535, !dbg !922
  br i1 %416, label %417, label %453, !dbg !923

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !924
  %419 = load i32, i32* %418, align 8, !dbg !924
  %420 = icmp ne i32 %419, 0, !dbg !927
  br i1 %420, label %421, label %424, !dbg !928

421:                                              ; preds = %417
  %422 = load i32, i32* %26, align 4, !dbg !929
  %423 = add i32 %422, 3, !dbg !929
  store i32 %423, i32* %26, align 4, !dbg !929
  br label %1451, !dbg !930

424:                                              ; preds = %417
  %425 = load i32, i32* %20, align 4, !dbg !931
  %426 = lshr i32 %425, 12, !dbg !933
  %427 = or i32 224, %426, !dbg !934
  %428 = trunc i32 %427 to i8, !dbg !935
  %429 = load i8*, i8** %25, align 8, !dbg !936
  %430 = load i32, i32* %26, align 4, !dbg !937
  %431 = add i32 %430, 1, !dbg !937
  store i32 %431, i32* %26, align 4, !dbg !937
  %432 = zext i32 %430 to i64, !dbg !936
  %433 = getelementptr inbounds i8, i8* %429, i64 %432, !dbg !936
  store i8 %428, i8* %433, align 1, !dbg !938
  %434 = load i32, i32* %20, align 4, !dbg !939
  %435 = lshr i32 %434, 6, !dbg !940
  %436 = and i32 %435, 63, !dbg !941
  %437 = or i32 128, %436, !dbg !942
  %438 = trunc i32 %437 to i8, !dbg !943
  %439 = load i8*, i8** %25, align 8, !dbg !944
  %440 = load i32, i32* %26, align 4, !dbg !945
  %441 = add i32 %440, 1, !dbg !945
  store i32 %441, i32* %26, align 4, !dbg !945
  %442 = zext i32 %440 to i64, !dbg !944
  %443 = getelementptr inbounds i8, i8* %439, i64 %442, !dbg !944
  store i8 %438, i8* %443, align 1, !dbg !946
  %444 = load i32, i32* %20, align 4, !dbg !947
  %445 = and i32 %444, 63, !dbg !948
  %446 = or i32 128, %445, !dbg !949
  %447 = trunc i32 %446 to i8, !dbg !950
  %448 = load i8*, i8** %25, align 8, !dbg !951
  %449 = load i32, i32* %26, align 4, !dbg !952
  %450 = add i32 %449, 1, !dbg !952
  store i32 %450, i32* %26, align 4, !dbg !952
  %451 = zext i32 %449 to i64, !dbg !951
  %452 = getelementptr inbounds i8, i8* %448, i64 %451, !dbg !951
  store i8 %447, i8* %452, align 1, !dbg !953
  br label %1451

453:                                              ; preds = %414
  %454 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !954
  %455 = load i32, i32* %454, align 8, !dbg !954
  %456 = icmp ne i32 %455, 0, !dbg !956
  br i1 %456, label %457, label %460, !dbg !957

457:                                              ; preds = %453
  %458 = load i32, i32* %26, align 4, !dbg !958
  %459 = add i32 %458, 4, !dbg !958
  store i32 %459, i32* %26, align 4, !dbg !958
  br label %1451, !dbg !959

460:                                              ; preds = %453
  %461 = load i32, i32* %20, align 4, !dbg !960
  %462 = lshr i32 %461, 18, !dbg !962
  %463 = or i32 240, %462, !dbg !963
  %464 = trunc i32 %463 to i8, !dbg !964
  %465 = load i8*, i8** %25, align 8, !dbg !965
  %466 = load i32, i32* %26, align 4, !dbg !966
  %467 = add i32 %466, 1, !dbg !966
  store i32 %467, i32* %26, align 4, !dbg !966
  %468 = zext i32 %466 to i64, !dbg !965
  %469 = getelementptr inbounds i8, i8* %465, i64 %468, !dbg !965
  store i8 %464, i8* %469, align 1, !dbg !967
  %470 = load i32, i32* %20, align 4, !dbg !968
  %471 = lshr i32 %470, 12, !dbg !969
  %472 = and i32 %471, 63, !dbg !970
  %473 = or i32 128, %472, !dbg !971
  %474 = trunc i32 %473 to i8, !dbg !972
  %475 = load i8*, i8** %25, align 8, !dbg !973
  %476 = load i32, i32* %26, align 4, !dbg !974
  %477 = add i32 %476, 1, !dbg !974
  store i32 %477, i32* %26, align 4, !dbg !974
  %478 = zext i32 %476 to i64, !dbg !973
  %479 = getelementptr inbounds i8, i8* %475, i64 %478, !dbg !973
  store i8 %474, i8* %479, align 1, !dbg !975
  %480 = load i32, i32* %20, align 4, !dbg !976
  %481 = lshr i32 %480, 6, !dbg !977
  %482 = and i32 %481, 63, !dbg !978
  %483 = or i32 128, %482, !dbg !979
  %484 = trunc i32 %483 to i8, !dbg !980
  %485 = load i8*, i8** %25, align 8, !dbg !981
  %486 = load i32, i32* %26, align 4, !dbg !982
  %487 = add i32 %486, 1, !dbg !982
  store i32 %487, i32* %26, align 4, !dbg !982
  %488 = zext i32 %486 to i64, !dbg !981
  %489 = getelementptr inbounds i8, i8* %485, i64 %488, !dbg !981
  store i8 %484, i8* %489, align 1, !dbg !983
  %490 = load i32, i32* %20, align 4, !dbg !984
  %491 = and i32 %490, 63, !dbg !985
  %492 = or i32 128, %491, !dbg !986
  %493 = trunc i32 %492 to i8, !dbg !987
  %494 = load i8*, i8** %25, align 8, !dbg !988
  %495 = load i32, i32* %26, align 4, !dbg !989
  %496 = add i32 %495, 1, !dbg !989
  store i32 %496, i32* %26, align 4, !dbg !989
  %497 = zext i32 %495 to i64, !dbg !988
  %498 = getelementptr inbounds i8, i8* %494, i64 %497, !dbg !988
  store i8 %493, i8* %498, align 1, !dbg !990
  br label %1451

499:                                              ; preds = %139
  %500 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !991
  %501 = load i32, i32* %500, align 8, !dbg !991
  %502 = icmp ne i32 %501, 0, !dbg !991
  br i1 %502, label %509, label %503, !dbg !994

503:                                              ; preds = %499
  %504 = load i8, i8* %27, align 1, !dbg !991
  %505 = load i8*, i8** %25, align 8, !dbg !991
  %506 = load i32, i32* %26, align 4, !dbg !991
  %507 = zext i32 %506 to i64, !dbg !991
  %508 = getelementptr inbounds i8, i8* %505, i64 %507, !dbg !991
  store i8 %504, i8* %508, align 1, !dbg !991
  br label %509, !dbg !991

509:                                              ; preds = %503, %499
  %510 = load i32, i32* %26, align 4, !dbg !994
  %511 = add i32 %510, 1, !dbg !994
  store i32 %511, i32* %26, align 4, !dbg !994
  br label %1451, !dbg !995

512:                                              ; preds = %135
  %513 = load i8, i8* %27, align 1, !dbg !996
  %514 = sext i8 %513 to i32, !dbg !996
  %515 = icmp eq i32 %514, 92, !dbg !998
  br i1 %515, label %516, label %519, !dbg !999

516:                                              ; preds = %512
  %517 = load i64, i64* %16, align 8, !dbg !1000
  %518 = or i64 %517, 16, !dbg !1000
  store i64 %518, i64* %16, align 8, !dbg !1000
  br label %1451, !dbg !1002

519:                                              ; preds = %512
  %520 = load i8, i8* %27, align 1, !dbg !1003
  %521 = sext i8 %520 to i32, !dbg !1003
  %522 = icmp eq i32 %521, 34, !dbg !1005
  br i1 %522, label %523, label %604, !dbg !1006

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !1007
  %525 = load i32, i32* %524, align 8, !dbg !1007
  %526 = icmp ne i32 %525, 0, !dbg !1010
  br i1 %526, label %532, label %527, !dbg !1011

527:                                              ; preds = %523
  %528 = load i8*, i8** %25, align 8, !dbg !1012
  %529 = load i32, i32* %26, align 4, !dbg !1013
  %530 = zext i32 %529 to i64, !dbg !1012
  %531 = getelementptr inbounds i8, i8* %528, i64 %530, !dbg !1012
  store i8 0, i8* %531, align 1, !dbg !1014
  br label %532, !dbg !1012

532:                                              ; preds = %527, %523
  %533 = load i64, i64* %16, align 8, !dbg !1015
  %534 = and i64 %533, -33, !dbg !1015
  store i64 %534, i64* %16, align 8, !dbg !1015
  store i8* null, i8** %25, align 8, !dbg !1016
  %535 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1017
  %536 = getelementptr inbounds %struct._json_value, %struct._json_value* %535, i32 0, i32 1, !dbg !1018
  %537 = load i32, i32* %536, align 8, !dbg !1018
  switch i32 %537, label %617 [
    i32 5, label %538
    i32 1, label %546
  ], !dbg !1019

538:                                              ; preds = %532
  %539 = load i32, i32* %26, align 4, !dbg !1020
  %540 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1022
  %541 = getelementptr inbounds %struct._json_value, %struct._json_value* %540, i32 0, i32 2, !dbg !1023
  %542 = bitcast %union.anon* %541 to %struct.anon*, !dbg !1024
  %543 = getelementptr inbounds %struct.anon, %struct.anon* %542, i32 0, i32 0, !dbg !1025
  store i32 %539, i32* %543, align 8, !dbg !1026
  %544 = load i64, i64* %16, align 8, !dbg !1027
  %545 = or i64 %544, 1, !dbg !1027
  store i64 %545, i64* %16, align 8, !dbg !1027
  br label %617, !dbg !1028

546:                                              ; preds = %532
  %547 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !1029
  %548 = load i32, i32* %547, align 8, !dbg !1029
  %549 = icmp ne i32 %548, 0, !dbg !1031
  br i1 %549, label %550, label %561, !dbg !1032

550:                                              ; preds = %546
  %551 = load i32, i32* %26, align 4, !dbg !1033
  %552 = add i32 %551, 1, !dbg !1034
  %553 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1035
  %554 = getelementptr inbounds %struct._json_value, %struct._json_value* %553, i32 0, i32 2, !dbg !1036
  %555 = bitcast %union.anon* %554 to %struct.anon.0*, !dbg !1037
  %556 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %555, i32 0, i32 1, !dbg !1038
  %557 = bitcast %struct._json_object_entry** %556 to i8**, !dbg !1039
  %558 = load i8*, i8** %557, align 8, !dbg !1040
  %559 = zext i32 %552 to i64, !dbg !1040
  %560 = getelementptr inbounds i8, i8* %558, i64 %559, !dbg !1040
  store i8* %560, i8** %557, align 8, !dbg !1040
  br label %601, !dbg !1041

561:                                              ; preds = %546
  %562 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1042
  %563 = getelementptr inbounds %struct._json_value, %struct._json_value* %562, i32 0, i32 3, !dbg !1044
  %564 = bitcast %union.anon.2* %563 to i8**, !dbg !1045
  %565 = load i8*, i8** %564, align 8, !dbg !1045
  %566 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1046
  %567 = getelementptr inbounds %struct._json_value, %struct._json_value* %566, i32 0, i32 2, !dbg !1047
  %568 = bitcast %union.anon* %567 to %struct.anon.0*, !dbg !1048
  %569 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %568, i32 0, i32 1, !dbg !1049
  %570 = load %struct._json_object_entry*, %struct._json_object_entry** %569, align 8, !dbg !1049
  %571 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1050
  %572 = getelementptr inbounds %struct._json_value, %struct._json_value* %571, i32 0, i32 2, !dbg !1051
  %573 = bitcast %union.anon* %572 to %struct.anon.0*, !dbg !1052
  %574 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %573, i32 0, i32 0, !dbg !1053
  %575 = load i32, i32* %574, align 8, !dbg !1053
  %576 = zext i32 %575 to i64, !dbg !1046
  %577 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %570, i64 %576, !dbg !1046
  %578 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %577, i32 0, i32 0, !dbg !1054
  store i8* %565, i8** %578, align 8, !dbg !1055
  %579 = load i32, i32* %26, align 4, !dbg !1056
  %580 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1057
  %581 = getelementptr inbounds %struct._json_value, %struct._json_value* %580, i32 0, i32 2, !dbg !1058
  %582 = bitcast %union.anon* %581 to %struct.anon.0*, !dbg !1059
  %583 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %582, i32 0, i32 1, !dbg !1060
  %584 = load %struct._json_object_entry*, %struct._json_object_entry** %583, align 8, !dbg !1060
  %585 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1061
  %586 = getelementptr inbounds %struct._json_value, %struct._json_value* %585, i32 0, i32 2, !dbg !1062
  %587 = bitcast %union.anon* %586 to %struct.anon.0*, !dbg !1063
  %588 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %587, i32 0, i32 0, !dbg !1064
  %589 = load i32, i32* %588, align 8, !dbg !1064
  %590 = zext i32 %589 to i64, !dbg !1057
  %591 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %584, i64 %590, !dbg !1057
  %592 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %591, i32 0, i32 1, !dbg !1065
  store i32 %579, i32* %592, align 8, !dbg !1066
  %593 = load i32, i32* %26, align 4, !dbg !1067
  %594 = add i32 %593, 1, !dbg !1068
  %595 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1069
  %596 = getelementptr inbounds %struct._json_value, %struct._json_value* %595, i32 0, i32 3, !dbg !1070
  %597 = bitcast %union.anon.2* %596 to i8**, !dbg !1071
  %598 = load i8*, i8** %597, align 8, !dbg !1072
  %599 = zext i32 %594 to i64, !dbg !1072
  %600 = getelementptr inbounds i8, i8* %598, i64 %599, !dbg !1072
  store i8* %600, i8** %597, align 8, !dbg !1072
  br label %601

601:                                              ; preds = %561, %550
  %602 = load i64, i64* %16, align 8, !dbg !1073
  %603 = or i64 %602, 72, !dbg !1073
  store i64 %603, i64* %16, align 8, !dbg !1073
  br label %1451, !dbg !1074

604:                                              ; preds = %519
  %605 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !1075
  %606 = load i32, i32* %605, align 8, !dbg !1075
  %607 = icmp ne i32 %606, 0, !dbg !1075
  br i1 %607, label %614, label %608, !dbg !1079

608:                                              ; preds = %604
  %609 = load i8, i8* %27, align 1, !dbg !1075
  %610 = load i8*, i8** %25, align 8, !dbg !1075
  %611 = load i32, i32* %26, align 4, !dbg !1075
  %612 = zext i32 %611 to i64, !dbg !1075
  %613 = getelementptr inbounds i8, i8* %610, i64 %612, !dbg !1075
  store i8 %609, i8* %613, align 1, !dbg !1075
  br label %614, !dbg !1075

614:                                              ; preds = %608, %604
  %615 = load i32, i32* %26, align 4, !dbg !1079
  %616 = add i32 %615, 1, !dbg !1079
  store i32 %616, i32* %26, align 4, !dbg !1079
  br label %1451, !dbg !1080

617:                                              ; preds = %532, %538, %114
  %618 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 3, !dbg !1081
  %619 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %618, i32 0, i32 1, !dbg !1083
  %620 = load i32, i32* %619, align 8, !dbg !1083
  %621 = and i32 %620, 1, !dbg !1084
  %622 = icmp ne i32 %621, 0, !dbg !1084
  br i1 %622, label %623, label %737, !dbg !1085

623:                                              ; preds = %617
  %624 = load i64, i64* %16, align 8, !dbg !1086
  %625 = and i64 %624, 24576, !dbg !1089
  %626 = icmp ne i64 %625, 0, !dbg !1089
  br i1 %626, label %627, label %684, !dbg !1090

627:                                              ; preds = %623
  %628 = load i64, i64* %16, align 8, !dbg !1091
  %629 = and i64 %628, 8192, !dbg !1094
  %630 = icmp ne i64 %629, 0, !dbg !1094
  br i1 %630, label %631, label %647, !dbg !1095

631:                                              ; preds = %627
  %632 = load i8, i8* %27, align 1, !dbg !1096
  %633 = sext i8 %632 to i32, !dbg !1096
  %634 = icmp eq i32 %633, 13, !dbg !1099
  br i1 %634, label %641, label %635, !dbg !1100

635:                                              ; preds = %631
  %636 = load i8, i8* %27, align 1, !dbg !1101
  %637 = sext i8 %636 to i32, !dbg !1101
  %638 = icmp ne i32 %637, 10, !dbg !1102
  %639 = load i8, i8* %27, align 1
  %640 = icmp ne i8 %639, 0
  %or.cond = select i1 %638, i1 %640, i1 false, !dbg !1103
  br i1 %or.cond, label %1451, label %641, !dbg !1103

641:                                              ; preds = %635, %631
  %642 = load i64, i64* %16, align 8, !dbg !1104
  %643 = and i64 %642, -8193, !dbg !1104
  store i64 %643, i64* %16, align 8, !dbg !1104
  %644 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1106
  %645 = load i8*, i8** %644, align 8, !dbg !1107
  %646 = getelementptr inbounds i8, i8* %645, i32 -1, !dbg !1107
  store i8* %646, i8** %644, align 8, !dbg !1107
  br label %1451, !dbg !1108

647:                                              ; preds = %627
  %648 = load i64, i64* %16, align 8, !dbg !1109
  %649 = and i64 %648, 16384, !dbg !1111
  %650 = icmp ne i64 %649, 0, !dbg !1111
  br i1 %650, label %651, label %737, !dbg !1112

651:                                              ; preds = %647
  %652 = load i8, i8* %27, align 1, !dbg !1113
  %653 = icmp ne i8 %652, 0, !dbg !1113
  br i1 %653, label %661, label %654, !dbg !1116

654:                                              ; preds = %651
  %655 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1117
  %656 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1119
  %657 = load i32, i32* %656, align 8, !dbg !1119
  %658 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1119
  %659 = load i32, i32* %658, align 4, !dbg !1119
  %660 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %655, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3.12, i64 0, i64 0), i32 noundef %657, i32 noundef %659) #8, !dbg !1120
  br label %1479, !dbg !1121

661:                                              ; preds = %651
  %662 = load i8, i8* %27, align 1, !dbg !1122
  %663 = sext i8 %662 to i32, !dbg !1122
  %664 = icmp eq i32 %663, 42, !dbg !1124
  br i1 %664, label %665, label %1451, !dbg !1125

665:                                              ; preds = %661
  %666 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1126
  %667 = load i8*, i8** %666, align 8, !dbg !1126
  %668 = load i8*, i8** %11, align 8, !dbg !1127
  %669 = getelementptr inbounds i8, i8* %668, i64 -1, !dbg !1128
  %670 = icmp ult i8* %667, %669, !dbg !1129
  br i1 %670, label %671, label %1451, !dbg !1130

671:                                              ; preds = %665
  %672 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1131
  %673 = load i8*, i8** %672, align 8, !dbg !1131
  %674 = getelementptr inbounds i8, i8* %673, i64 1, !dbg !1132
  %675 = load i8, i8* %674, align 1, !dbg !1132
  %676 = sext i8 %675 to i32, !dbg !1132
  %677 = icmp eq i32 %676, 47, !dbg !1133
  br i1 %677, label %678, label %1451, !dbg !1134

678:                                              ; preds = %671
  %679 = load i64, i64* %16, align 8, !dbg !1135
  %680 = and i64 %679, -16385, !dbg !1135
  store i64 %680, i64* %16, align 8, !dbg !1135
  %681 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1137
  %682 = load i8*, i8** %681, align 8, !dbg !1138
  %683 = getelementptr inbounds i8, i8* %682, i32 1, !dbg !1138
  store i8* %683, i8** %681, align 8, !dbg !1138
  br label %1451, !dbg !1139

684:                                              ; preds = %623
  %685 = load i8, i8* %27, align 1, !dbg !1140
  %686 = sext i8 %685 to i32, !dbg !1140
  %687 = icmp eq i32 %686, 47, !dbg !1142
  br i1 %687, label %688, label %737, !dbg !1143

688:                                              ; preds = %684
  %689 = load i64, i64* %16, align 8, !dbg !1144
  %690 = and i64 %689, 136, !dbg !1147
  %691 = icmp ne i64 %690, 0, !dbg !1147
  br i1 %691, label %704, label %692, !dbg !1148

692:                                              ; preds = %688
  %693 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1149
  %694 = getelementptr inbounds %struct._json_value, %struct._json_value* %693, i32 0, i32 1, !dbg !1150
  %695 = load i32, i32* %694, align 8, !dbg !1150
  %696 = icmp ne i32 %695, 1, !dbg !1151
  br i1 %696, label %697, label %704, !dbg !1152

697:                                              ; preds = %692
  %698 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1153
  %699 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1155
  %700 = load i32, i32* %699, align 8, !dbg !1155
  %701 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1155
  %702 = load i32, i32* %701, align 4, !dbg !1155
  %703 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %698, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4.13, i64 0, i64 0), i32 noundef %700, i32 noundef %702) #8, !dbg !1156
  br label %1479, !dbg !1157

704:                                              ; preds = %692, %688
  %705 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1158
  %706 = load i8*, i8** %705, align 8, !dbg !1160
  %707 = getelementptr inbounds i8, i8* %706, i32 1, !dbg !1160
  store i8* %707, i8** %705, align 8, !dbg !1160
  %708 = load i8*, i8** %11, align 8, !dbg !1161
  %709 = icmp eq i8* %707, %708, !dbg !1162
  br i1 %709, label %710, label %717, !dbg !1163

710:                                              ; preds = %704
  %711 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1164
  %712 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1166
  %713 = load i32, i32* %712, align 8, !dbg !1166
  %714 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1166
  %715 = load i32, i32* %714, align 4, !dbg !1166
  %716 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %711, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5.14, i64 0, i64 0), i32 noundef %713, i32 noundef %715) #8, !dbg !1167
  br label %1479, !dbg !1168

717:                                              ; preds = %704
  %718 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1169
  %719 = load i8*, i8** %718, align 8, !dbg !1169
  %720 = load i8, i8* %719, align 1, !dbg !1170
  store i8 %720, i8* %27, align 1, !dbg !1171
  %721 = sext i8 %720 to i32, !dbg !1172
  switch i32 %721, label %728 [
    i32 47, label %722
    i32 42, label %725
  ], !dbg !1173

722:                                              ; preds = %717
  %723 = load i64, i64* %16, align 8, !dbg !1174
  %724 = or i64 %723, 8192, !dbg !1174
  store i64 %724, i64* %16, align 8, !dbg !1174
  br label %1451, !dbg !1176

725:                                              ; preds = %717
  %726 = load i64, i64* %16, align 8, !dbg !1177
  %727 = or i64 %726, 16384, !dbg !1177
  store i64 %727, i64* %16, align 8, !dbg !1177
  br label %1451, !dbg !1178

728:                                              ; preds = %717
  %729 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1179
  %730 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1180
  %731 = load i32, i32* %730, align 8, !dbg !1180
  %732 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1180
  %733 = load i32, i32* %732, align 4, !dbg !1180
  %734 = load i8, i8* %27, align 1, !dbg !1181
  %735 = sext i8 %734 to i32, !dbg !1181
  %736 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %729, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6.15, i64 0, i64 0), i32 noundef %731, i32 noundef %733, i32 noundef %735) #8, !dbg !1182
  br label %1479, !dbg !1183

737:                                              ; preds = %647, %684, %617
  %738 = load i64, i64* %16, align 8, !dbg !1184
  %739 = and i64 %738, 128, !dbg !1186
  %740 = icmp ne i64 %739, 0, !dbg !1186
  br i1 %740, label %741, label %761, !dbg !1187

741:                                              ; preds = %737
  %742 = load i8, i8* %27, align 1, !dbg !1188
  %743 = icmp ne i8 %742, 0, !dbg !1188
  br i1 %743, label %744, label %1455, !dbg !1191

744:                                              ; preds = %741
  %745 = load i8, i8* %27, align 1, !dbg !1192
  %746 = sext i8 %745 to i32, !dbg !1192
  switch i32 %746, label %752 [
    i32 10, label %747
    i32 32, label %1451
    i32 9, label %1451
    i32 13, label %1451
  ], !dbg !1193

747:                                              ; preds = %744
  %748 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1194
  %749 = load i32, i32* %748, align 8, !dbg !1194
  %750 = add i32 %749, 1, !dbg !1194
  store i32 %750, i32* %748, align 8, !dbg !1194
  %751 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1194
  store i32 0, i32* %751, align 4, !dbg !1194
  br label %1451, !dbg !1194

752:                                              ; preds = %744
  %753 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1196
  %754 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1197
  %755 = load i32, i32* %754, align 8, !dbg !1197
  %756 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1198
  %757 = load i32, i32* %756, align 4, !dbg !1198
  %758 = load i8, i8* %27, align 1, !dbg !1199
  %759 = sext i8 %758 to i32, !dbg !1199
  %760 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %753, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7.16, i64 0, i64 0), i32 noundef %755, i32 noundef %757, i32 noundef %759) #8, !dbg !1200
  br label %1479, !dbg !1201

761:                                              ; preds = %737
  %762 = load i64, i64* %16, align 8, !dbg !1202
  %763 = and i64 %762, 8, !dbg !1204
  %764 = icmp ne i64 %763, 0, !dbg !1204
  br i1 %764, label %765, label %1059, !dbg !1205

765:                                              ; preds = %761
  %766 = load i8, i8* %27, align 1, !dbg !1206
  %767 = sext i8 %766 to i32, !dbg !1206
  switch i32 %767, label %792 [
    i32 10, label %768
    i32 32, label %1451
    i32 9, label %1451
    i32 13, label %1451
    i32 93, label %773
  ], !dbg !1208

768:                                              ; preds = %765
  %769 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1209
  %770 = load i32, i32* %769, align 8, !dbg !1209
  %771 = add i32 %770, 1, !dbg !1209
  store i32 %771, i32* %769, align 8, !dbg !1209
  %772 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1209
  store i32 0, i32* %772, align 4, !dbg !1209
  br label %1451, !dbg !1209

773:                                              ; preds = %765
  %774 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1211
  %775 = icmp ne %struct._json_value* %774, null, !dbg !1211
  br i1 %775, label %776, label %785, !dbg !1213

776:                                              ; preds = %773
  %777 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1214
  %778 = getelementptr inbounds %struct._json_value, %struct._json_value* %777, i32 0, i32 1, !dbg !1215
  %779 = load i32, i32* %778, align 8, !dbg !1215
  %780 = icmp eq i32 %779, 2, !dbg !1216
  br i1 %780, label %781, label %785, !dbg !1217

781:                                              ; preds = %776
  %782 = load i64, i64* %16, align 8, !dbg !1218
  %783 = and i64 %782, -13, !dbg !1219
  %784 = or i64 %783, 1, !dbg !1220
  store i64 %784, i64* %16, align 8, !dbg !1221
  br label %1360, !dbg !1222

785:                                              ; preds = %776, %773
  %786 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1223
  %787 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1225
  %788 = load i32, i32* %787, align 8, !dbg !1225
  %789 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1225
  %790 = load i32, i32* %789, align 4, !dbg !1225
  %791 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %786, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8.17, i64 0, i64 0), i32 noundef %788, i32 noundef %790) #8, !dbg !1226
  br label %1479, !dbg !1227

792:                                              ; preds = %765
  %793 = load i64, i64* %16, align 8, !dbg !1228
  %794 = and i64 %793, 4, !dbg !1230
  %795 = icmp ne i64 %794, 0, !dbg !1230
  br i1 %795, label %796, label %812, !dbg !1231

796:                                              ; preds = %792
  %797 = load i8, i8* %27, align 1, !dbg !1232
  %798 = sext i8 %797 to i32, !dbg !1232
  %799 = icmp eq i32 %798, 44, !dbg !1235
  br i1 %799, label %800, label %803, !dbg !1236

800:                                              ; preds = %796
  %801 = load i64, i64* %16, align 8, !dbg !1237
  %802 = and i64 %801, -5, !dbg !1237
  store i64 %802, i64* %16, align 8, !dbg !1237
  br label %1451, !dbg !1239

803:                                              ; preds = %796
  %804 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1240
  %805 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1242
  %806 = load i32, i32* %805, align 8, !dbg !1242
  %807 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1243
  %808 = load i32, i32* %807, align 4, !dbg !1243
  %809 = load i8, i8* %27, align 1, !dbg !1244
  %810 = sext i8 %809 to i32, !dbg !1244
  %811 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %804, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.18, i64 0, i64 0), i32 noundef %806, i32 noundef %808, i32 noundef %810) #8, !dbg !1245
  br label %1479, !dbg !1246

812:                                              ; preds = %792
  %813 = load i64, i64* %16, align 8, !dbg !1247
  %814 = and i64 %813, 64, !dbg !1249
  %815 = icmp ne i64 %814, 0, !dbg !1249
  br i1 %815, label %816, label %832, !dbg !1250

816:                                              ; preds = %812
  %817 = load i8, i8* %27, align 1, !dbg !1251
  %818 = sext i8 %817 to i32, !dbg !1251
  %819 = icmp eq i32 %818, 58, !dbg !1254
  br i1 %819, label %820, label %823, !dbg !1255

820:                                              ; preds = %816
  %821 = load i64, i64* %16, align 8, !dbg !1256
  %822 = and i64 %821, -65, !dbg !1256
  store i64 %822, i64* %16, align 8, !dbg !1256
  br label %1451, !dbg !1258

823:                                              ; preds = %816
  %824 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1259
  %825 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1261
  %826 = load i32, i32* %825, align 8, !dbg !1261
  %827 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1262
  %828 = load i32, i32* %827, align 4, !dbg !1262
  %829 = load i8, i8* %27, align 1, !dbg !1263
  %830 = sext i8 %829 to i32, !dbg !1263
  %831 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %824, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 noundef %826, i32 noundef %828, i32 noundef %830) #8, !dbg !1264
  br label %1479, !dbg !1265

832:                                              ; preds = %812
  %833 = load i64, i64* %16, align 8, !dbg !1266
  %834 = and i64 %833, -9, !dbg !1266
  store i64 %834, i64* %16, align 8, !dbg !1266
  %835 = load i8, i8* %27, align 1, !dbg !1267
  %836 = sext i8 %835 to i32, !dbg !1267
  switch i32 %836, label %972 [
    i32 123, label %837
    i32 91, label %840
    i32 34, label %846
    i32 116, label %857
    i32 102, label %895
    i32 110, label %937
  ], !dbg !1268

837:                                              ; preds = %832
  %838 = call i32 @new_value(%struct.json_state* noundef %15, %struct._json_value** noundef %12, %struct._json_value** noundef %13, %struct._json_value** noundef %14, i32 noundef 1), !dbg !1269
  %839 = icmp ne i32 %838, 0, !dbg !1269
  br i1 %839, label %1451, label %1469, !dbg !1272

840:                                              ; preds = %832
  %841 = call i32 @new_value(%struct.json_state* noundef %15, %struct._json_value** noundef %12, %struct._json_value** noundef %13, %struct._json_value** noundef %14, i32 noundef 2), !dbg !1273
  %842 = icmp ne i32 %841, 0, !dbg !1273
  br i1 %842, label %843, label %1469, !dbg !1275

843:                                              ; preds = %840
  %844 = load i64, i64* %16, align 8, !dbg !1276
  %845 = or i64 %844, 8, !dbg !1276
  store i64 %845, i64* %16, align 8, !dbg !1276
  br label %1451, !dbg !1277

846:                                              ; preds = %832
  %847 = call i32 @new_value(%struct.json_state* noundef %15, %struct._json_value** noundef %12, %struct._json_value** noundef %13, %struct._json_value** noundef %14, i32 noundef 5), !dbg !1278
  %848 = icmp ne i32 %847, 0, !dbg !1278
  br i1 %848, label %849, label %1469, !dbg !1280

849:                                              ; preds = %846
  %850 = load i64, i64* %16, align 8, !dbg !1281
  %851 = or i64 %850, 32, !dbg !1281
  store i64 %851, i64* %16, align 8, !dbg !1281
  %852 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1282
  %853 = getelementptr inbounds %struct._json_value, %struct._json_value* %852, i32 0, i32 2, !dbg !1283
  %854 = bitcast %union.anon* %853 to %struct.anon*, !dbg !1284
  %855 = getelementptr inbounds %struct.anon, %struct.anon* %854, i32 0, i32 1, !dbg !1285
  %856 = load i8*, i8** %855, align 8, !dbg !1285
  store i8* %856, i8** %25, align 8, !dbg !1286
  store i32 0, i32* %26, align 4, !dbg !1287
  br label %1451, !dbg !1288

857:                                              ; preds = %832
  %858 = load i8*, i8** %11, align 8, !dbg !1289
  %859 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1291
  %860 = load i8*, i8** %859, align 8, !dbg !1291
  %861 = ptrtoint i8* %858 to i64, !dbg !1292
  %862 = ptrtoint i8* %860 to i64, !dbg !1292
  %863 = sub i64 %861, %862, !dbg !1292
  %864 = icmp slt i64 %863, 3, !dbg !1293
  br i1 %864, label %1462, label %865, !dbg !1294

865:                                              ; preds = %857
  %866 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1295
  %867 = load i8*, i8** %866, align 8, !dbg !1296
  %868 = getelementptr inbounds i8, i8* %867, i32 1, !dbg !1296
  store i8* %868, i8** %866, align 8, !dbg !1296
  %869 = load i8, i8* %868, align 1, !dbg !1297
  %870 = sext i8 %869 to i32, !dbg !1297
  %871 = icmp ne i32 %870, 114, !dbg !1298
  br i1 %871, label %1462, label %872, !dbg !1299

872:                                              ; preds = %865
  %873 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1300
  %874 = load i8*, i8** %873, align 8, !dbg !1301
  %875 = getelementptr inbounds i8, i8* %874, i32 1, !dbg !1301
  store i8* %875, i8** %873, align 8, !dbg !1301
  %876 = load i8, i8* %875, align 1, !dbg !1302
  %877 = sext i8 %876 to i32, !dbg !1302
  %878 = icmp ne i32 %877, 117, !dbg !1303
  br i1 %878, label %1462, label %879, !dbg !1304

879:                                              ; preds = %872
  %880 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1305
  %881 = load i8*, i8** %880, align 8, !dbg !1306
  %882 = getelementptr inbounds i8, i8* %881, i32 1, !dbg !1306
  store i8* %882, i8** %880, align 8, !dbg !1306
  %883 = load i8, i8* %882, align 1, !dbg !1307
  %884 = sext i8 %883 to i32, !dbg !1307
  %885 = icmp ne i32 %884, 101, !dbg !1308
  br i1 %885, label %1462, label %886, !dbg !1309

886:                                              ; preds = %879
  %887 = call i32 @new_value(%struct.json_state* noundef %15, %struct._json_value** noundef %12, %struct._json_value** noundef %13, %struct._json_value** noundef %14, i32 noundef 6), !dbg !1310
  %888 = icmp ne i32 %887, 0, !dbg !1310
  br i1 %888, label %889, label %1469, !dbg !1312

889:                                              ; preds = %886
  %890 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1313
  %891 = getelementptr inbounds %struct._json_value, %struct._json_value* %890, i32 0, i32 2, !dbg !1314
  %892 = bitcast %union.anon* %891 to i32*, !dbg !1315
  store i32 1, i32* %892, align 8, !dbg !1316
  %893 = load i64, i64* %16, align 8, !dbg !1317
  %894 = or i64 %893, 1, !dbg !1317
  store i64 %894, i64* %16, align 8, !dbg !1317
  br label %1360, !dbg !1318

895:                                              ; preds = %832
  %896 = load i8*, i8** %11, align 8, !dbg !1319
  %897 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1321
  %898 = load i8*, i8** %897, align 8, !dbg !1321
  %899 = ptrtoint i8* %896 to i64, !dbg !1322
  %900 = ptrtoint i8* %898 to i64, !dbg !1322
  %901 = sub i64 %899, %900, !dbg !1322
  %902 = icmp slt i64 %901, 4, !dbg !1323
  br i1 %902, label %1462, label %903, !dbg !1324

903:                                              ; preds = %895
  %904 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1325
  %905 = load i8*, i8** %904, align 8, !dbg !1326
  %906 = getelementptr inbounds i8, i8* %905, i32 1, !dbg !1326
  store i8* %906, i8** %904, align 8, !dbg !1326
  %907 = load i8, i8* %906, align 1, !dbg !1327
  %908 = sext i8 %907 to i32, !dbg !1327
  %909 = icmp ne i32 %908, 97, !dbg !1328
  br i1 %909, label %1462, label %910, !dbg !1329

910:                                              ; preds = %903
  %911 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1330
  %912 = load i8*, i8** %911, align 8, !dbg !1331
  %913 = getelementptr inbounds i8, i8* %912, i32 1, !dbg !1331
  store i8* %913, i8** %911, align 8, !dbg !1331
  %914 = load i8, i8* %913, align 1, !dbg !1332
  %915 = sext i8 %914 to i32, !dbg !1332
  %916 = icmp ne i32 %915, 108, !dbg !1333
  br i1 %916, label %1462, label %917, !dbg !1334

917:                                              ; preds = %910
  %918 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1335
  %919 = load i8*, i8** %918, align 8, !dbg !1336
  %920 = getelementptr inbounds i8, i8* %919, i32 1, !dbg !1336
  store i8* %920, i8** %918, align 8, !dbg !1336
  %921 = load i8, i8* %920, align 1, !dbg !1337
  %922 = sext i8 %921 to i32, !dbg !1337
  %923 = icmp ne i32 %922, 115, !dbg !1338
  br i1 %923, label %1462, label %924, !dbg !1339

924:                                              ; preds = %917
  %925 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1340
  %926 = load i8*, i8** %925, align 8, !dbg !1341
  %927 = getelementptr inbounds i8, i8* %926, i32 1, !dbg !1341
  store i8* %927, i8** %925, align 8, !dbg !1341
  %928 = load i8, i8* %927, align 1, !dbg !1342
  %929 = sext i8 %928 to i32, !dbg !1342
  %930 = icmp ne i32 %929, 101, !dbg !1343
  br i1 %930, label %1462, label %931, !dbg !1344

931:                                              ; preds = %924
  %932 = call i32 @new_value(%struct.json_state* noundef %15, %struct._json_value** noundef %12, %struct._json_value** noundef %13, %struct._json_value** noundef %14, i32 noundef 6), !dbg !1345
  %933 = icmp ne i32 %932, 0, !dbg !1345
  br i1 %933, label %934, label %1469, !dbg !1347

934:                                              ; preds = %931
  %935 = load i64, i64* %16, align 8, !dbg !1348
  %936 = or i64 %935, 1, !dbg !1348
  store i64 %936, i64* %16, align 8, !dbg !1348
  br label %1360, !dbg !1349

937:                                              ; preds = %832
  %938 = load i8*, i8** %11, align 8, !dbg !1350
  %939 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1352
  %940 = load i8*, i8** %939, align 8, !dbg !1352
  %941 = ptrtoint i8* %938 to i64, !dbg !1353
  %942 = ptrtoint i8* %940 to i64, !dbg !1353
  %943 = sub i64 %941, %942, !dbg !1353
  %944 = icmp slt i64 %943, 3, !dbg !1354
  br i1 %944, label %1462, label %945, !dbg !1355

945:                                              ; preds = %937
  %946 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1356
  %947 = load i8*, i8** %946, align 8, !dbg !1357
  %948 = getelementptr inbounds i8, i8* %947, i32 1, !dbg !1357
  store i8* %948, i8** %946, align 8, !dbg !1357
  %949 = load i8, i8* %948, align 1, !dbg !1358
  %950 = sext i8 %949 to i32, !dbg !1358
  %951 = icmp ne i32 %950, 117, !dbg !1359
  br i1 %951, label %1462, label %952, !dbg !1360

952:                                              ; preds = %945
  %953 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1361
  %954 = load i8*, i8** %953, align 8, !dbg !1362
  %955 = getelementptr inbounds i8, i8* %954, i32 1, !dbg !1362
  store i8* %955, i8** %953, align 8, !dbg !1362
  %956 = load i8, i8* %955, align 1, !dbg !1363
  %957 = sext i8 %956 to i32, !dbg !1363
  %958 = icmp ne i32 %957, 108, !dbg !1364
  br i1 %958, label %1462, label %959, !dbg !1365

959:                                              ; preds = %952
  %960 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1366
  %961 = load i8*, i8** %960, align 8, !dbg !1367
  %962 = getelementptr inbounds i8, i8* %961, i32 1, !dbg !1367
  store i8* %962, i8** %960, align 8, !dbg !1367
  %963 = load i8, i8* %962, align 1, !dbg !1368
  %964 = sext i8 %963 to i32, !dbg !1368
  %965 = icmp ne i32 %964, 108, !dbg !1369
  br i1 %965, label %1462, label %966, !dbg !1370

966:                                              ; preds = %959
  %967 = call i32 @new_value(%struct.json_state* noundef %15, %struct._json_value** noundef %12, %struct._json_value** noundef %13, %struct._json_value** noundef %14, i32 noundef 7), !dbg !1371
  %968 = icmp ne i32 %967, 0, !dbg !1371
  br i1 %968, label %969, label %1469, !dbg !1373

969:                                              ; preds = %966
  %970 = load i64, i64* %16, align 8, !dbg !1374
  %971 = or i64 %970, 1, !dbg !1374
  store i64 %971, i64* %16, align 8, !dbg !1374
  br label %1360, !dbg !1375

972:                                              ; preds = %832
  %973 = call i16** @__ctype_b_loc() #9, !dbg !1376
  %974 = load i16*, i16** %973, align 8, !dbg !1376
  %975 = load i8, i8* %27, align 1, !dbg !1376
  %976 = sext i8 %975 to i32, !dbg !1376
  %977 = sext i32 %976 to i64, !dbg !1376
  %978 = getelementptr inbounds i16, i16* %974, i64 %977, !dbg !1376
  %979 = load i16, i16* %978, align 2, !dbg !1376
  %980 = zext i16 %979 to i32, !dbg !1376
  %981 = and i32 %980, 2048, !dbg !1376
  %982 = icmp ne i32 %981, 0, !dbg !1376
  br i1 %982, label %987, label %983, !dbg !1378

983:                                              ; preds = %972
  %984 = load i8, i8* %27, align 1, !dbg !1379
  %985 = sext i8 %984 to i32, !dbg !1379
  %986 = icmp eq i32 %985, 45, !dbg !1380
  br i1 %986, label %987, label %1050, !dbg !1381

987:                                              ; preds = %983, %972
  %988 = call i32 @new_value(%struct.json_state* noundef %15, %struct._json_value** noundef %12, %struct._json_value** noundef %13, %struct._json_value** noundef %14, i32 noundef 3), !dbg !1382
  %989 = icmp ne i32 %988, 0, !dbg !1382
  br i1 %989, label %990, label %1469, !dbg !1385

990:                                              ; preds = %987
  %991 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !1386
  %992 = load i32, i32* %991, align 8, !dbg !1386
  %993 = icmp ne i32 %992, 0, !dbg !1388
  br i1 %993, label %1038, label %994, !dbg !1389

994:                                              ; preds = %990, %1031
  %995 = call i16** @__ctype_b_loc() #9, !dbg !1390
  %996 = load i16*, i16** %995, align 8, !dbg !1390
  %997 = load i8, i8* %27, align 1, !dbg !1390
  %998 = sext i8 %997 to i32, !dbg !1390
  %999 = sext i32 %998 to i64, !dbg !1390
  %1000 = getelementptr inbounds i16, i16* %996, i64 %999, !dbg !1390
  %1001 = load i16, i16* %1000, align 2, !dbg !1390
  %1002 = zext i16 %1001 to i32, !dbg !1390
  %1003 = and i32 %1002, 2048, !dbg !1390
  %1004 = icmp ne i32 %1003, 0, !dbg !1390
  br i1 %1004, label %.critedge, label %1005, !dbg !1392

1005:                                             ; preds = %994
  %1006 = load i8, i8* %27, align 1, !dbg !1393
  %1007 = sext i8 %1006 to i32, !dbg !1393
  %1008 = icmp eq i32 %1007, 43, !dbg !1394
  br i1 %1008, label %.critedge, label %1009, !dbg !1395

1009:                                             ; preds = %1005
  %1010 = load i8, i8* %27, align 1, !dbg !1396
  %1011 = sext i8 %1010 to i32, !dbg !1396
  %1012 = icmp eq i32 %1011, 45, !dbg !1397
  br i1 %1012, label %.critedge, label %1013, !dbg !1398

1013:                                             ; preds = %1009
  %1014 = load i8, i8* %27, align 1, !dbg !1399
  %1015 = sext i8 %1014 to i32, !dbg !1399
  %1016 = icmp eq i32 %1015, 101, !dbg !1400
  br i1 %1016, label %.critedge, label %1017, !dbg !1401

1017:                                             ; preds = %1013
  %1018 = load i8, i8* %27, align 1, !dbg !1402
  %1019 = sext i8 %1018 to i32, !dbg !1402
  %1020 = icmp eq i32 %1019, 69, !dbg !1403
  br i1 %1020, label %.critedge, label %1021, !dbg !1404

1021:                                             ; preds = %1017
  %1022 = load i8, i8* %27, align 1, !dbg !1405
  %1023 = sext i8 %1022 to i32, !dbg !1405
  %1024 = icmp eq i32 %1023, 46, !dbg !1406
  br i1 %1024, label %.critedge, label %1035, !dbg !1407

.critedge:                                        ; preds = %994, %1005, %1009, %1013, %1017, %1021
  %1025 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1408
  %1026 = load i8*, i8** %1025, align 8, !dbg !1411
  %1027 = getelementptr inbounds i8, i8* %1026, i32 1, !dbg !1411
  store i8* %1027, i8** %1025, align 8, !dbg !1411
  %1028 = load i8*, i8** %11, align 8, !dbg !1412
  %1029 = icmp eq i8* %1027, %1028, !dbg !1413
  br i1 %1029, label %1030, label %1031, !dbg !1414

1030:                                             ; preds = %.critedge
  store i8 0, i8* %27, align 1, !dbg !1415
  br label %1035, !dbg !1417

1031:                                             ; preds = %.critedge
  %1032 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1418
  %1033 = load i8*, i8** %1032, align 8, !dbg !1418
  %1034 = load i8, i8* %1033, align 1, !dbg !1419
  store i8 %1034, i8* %27, align 1, !dbg !1420
  br label %994, !dbg !1407, !llvm.loop !1421

1035:                                             ; preds = %1030, %1021
  %1036 = load i64, i64* %16, align 8, !dbg !1423
  %1037 = or i64 %1036, 3, !dbg !1423
  store i64 %1037, i64* %16, align 8, !dbg !1423
  br label %1360, !dbg !1424

1038:                                             ; preds = %990
  %1039 = load i64, i64* %16, align 8, !dbg !1425
  %1040 = and i64 %1039, -7937, !dbg !1425
  store i64 %1040, i64* %16, align 8, !dbg !1425
  store i64 0, i64* %17, align 8, !dbg !1426
  store i64 0, i64* %19, align 8, !dbg !1427
  store i64 0, i64* %18, align 8, !dbg !1428
  %1041 = load i8, i8* %27, align 1, !dbg !1429
  %1042 = sext i8 %1041 to i32, !dbg !1429
  %1043 = icmp ne i32 %1042, 45, !dbg !1431
  br i1 %1043, label %1044, label %1047, !dbg !1432

1044:                                             ; preds = %1038
  %1045 = load i64, i64* %16, align 8, !dbg !1433
  %1046 = or i64 %1045, 2, !dbg !1433
  store i64 %1046, i64* %16, align 8, !dbg !1433
  br label %1360, !dbg !1435

1047:                                             ; preds = %1038
  %1048 = load i64, i64* %16, align 8, !dbg !1436
  %1049 = or i64 %1048, 256, !dbg !1436
  store i64 %1049, i64* %16, align 8, !dbg !1436
  br label %1451, !dbg !1437

1050:                                             ; preds = %983
  %1051 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1438
  %1052 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1440
  %1053 = load i32, i32* %1052, align 8, !dbg !1440
  %1054 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1440
  %1055 = load i32, i32* %1054, align 4, !dbg !1440
  %1056 = load i8, i8* %27, align 1, !dbg !1441
  %1057 = sext i8 %1056 to i32, !dbg !1441
  %1058 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %1051, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 noundef %1053, i32 noundef %1055, i32 noundef %1057) #8, !dbg !1442
  br label %1479, !dbg !1443

1059:                                             ; preds = %761
  %1060 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1444
  %1061 = getelementptr inbounds %struct._json_value, %struct._json_value* %1060, i32 0, i32 1, !dbg !1446
  %1062 = load i32, i32* %1061, align 8, !dbg !1446
  switch i32 %1062, label %1360 [
    i32 1, label %1063
    i32 3, label %1109
    i32 4, label %1109
  ], !dbg !1447

1063:                                             ; preds = %1059
  %1064 = load i8, i8* %27, align 1, !dbg !1448
  %1065 = sext i8 %1064 to i32, !dbg !1448
  switch i32 %1065, label %1100 [
    i32 10, label %1066
    i32 32, label %1451
    i32 9, label %1451
    i32 13, label %1451
    i32 34, label %1071
    i32 125, label %1089
    i32 44, label %1093
  ], !dbg !1450

1066:                                             ; preds = %1063
  %1067 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1451
  %1068 = load i32, i32* %1067, align 8, !dbg !1451
  %1069 = add i32 %1068, 1, !dbg !1451
  store i32 %1069, i32* %1067, align 8, !dbg !1451
  %1070 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1451
  store i32 0, i32* %1070, align 4, !dbg !1451
  br label %1451, !dbg !1451

1071:                                             ; preds = %1063
  %1072 = load i64, i64* %16, align 8, !dbg !1453
  %1073 = and i64 %1072, 4, !dbg !1455
  %1074 = icmp ne i64 %1073, 0, !dbg !1455
  br i1 %1074, label %1075, label %1082, !dbg !1456

1075:                                             ; preds = %1071
  %1076 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1457
  %1077 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1459
  %1078 = load i32, i32* %1077, align 8, !dbg !1459
  %1079 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1459
  %1080 = load i32, i32* %1079, align 4, !dbg !1459
  %1081 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %1076, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 noundef %1078, i32 noundef %1080) #8, !dbg !1460
  br label %1479, !dbg !1461

1082:                                             ; preds = %1071
  %1083 = load i64, i64* %16, align 8, !dbg !1462
  %1084 = or i64 %1083, 32, !dbg !1462
  store i64 %1084, i64* %16, align 8, !dbg !1462
  %1085 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1463
  %1086 = getelementptr inbounds %struct._json_value, %struct._json_value* %1085, i32 0, i32 3, !dbg !1464
  %1087 = bitcast %union.anon.2* %1086 to i8**, !dbg !1465
  %1088 = load i8*, i8** %1087, align 8, !dbg !1465
  store i8* %1088, i8** %25, align 8, !dbg !1466
  store i32 0, i32* %26, align 4, !dbg !1467
  br label %1360, !dbg !1468

1089:                                             ; preds = %1063
  %1090 = load i64, i64* %16, align 8, !dbg !1469
  %1091 = and i64 %1090, -5, !dbg !1470
  %1092 = or i64 %1091, 1, !dbg !1471
  store i64 %1092, i64* %16, align 8, !dbg !1472
  br label %1360, !dbg !1473

1093:                                             ; preds = %1063
  %1094 = load i64, i64* %16, align 8, !dbg !1474
  %1095 = and i64 %1094, 4, !dbg !1476
  %1096 = icmp ne i64 %1095, 0, !dbg !1476
  br i1 %1096, label %1097, label %1100, !dbg !1477

1097:                                             ; preds = %1093
  %1098 = load i64, i64* %16, align 8, !dbg !1478
  %1099 = and i64 %1098, -5, !dbg !1478
  store i64 %1099, i64* %16, align 8, !dbg !1478
  br label %1360, !dbg !1480

1100:                                             ; preds = %1093, %1063
  %1101 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1481
  %1102 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1482
  %1103 = load i32, i32* %1102, align 8, !dbg !1482
  %1104 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1482
  %1105 = load i32, i32* %1104, align 4, !dbg !1482
  %1106 = load i8, i8* %27, align 1, !dbg !1483
  %1107 = sext i8 %1106 to i32, !dbg !1483
  %1108 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %1101, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 noundef %1103, i32 noundef %1105, i32 noundef %1107) #8, !dbg !1484
  br label %1479, !dbg !1485

1109:                                             ; preds = %1059, %1059
  %1110 = call i16** @__ctype_b_loc() #9, !dbg !1486
  %1111 = load i16*, i16** %1110, align 8, !dbg !1486
  %1112 = load i8, i8* %27, align 1, !dbg !1486
  %1113 = sext i8 %1112 to i32, !dbg !1486
  %1114 = sext i32 %1113 to i64, !dbg !1486
  %1115 = getelementptr inbounds i16, i16* %1111, i64 %1114, !dbg !1486
  %1116 = load i16, i16* %1115, align 2, !dbg !1486
  %1117 = zext i16 %1116 to i32, !dbg !1486
  %1118 = and i32 %1117, 2048, !dbg !1486
  %1119 = icmp ne i32 %1118, 0, !dbg !1486
  br i1 %1119, label %1120, label %1190, !dbg !1488

1120:                                             ; preds = %1109
  %1121 = load i64, i64* %17, align 8, !dbg !1489
  %1122 = add nsw i64 %1121, 1, !dbg !1489
  store i64 %1122, i64* %17, align 8, !dbg !1489
  %1123 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1491
  %1124 = getelementptr inbounds %struct._json_value, %struct._json_value* %1123, i32 0, i32 1, !dbg !1493
  %1125 = load i32, i32* %1124, align 8, !dbg !1493
  %1126 = icmp eq i32 %1125, 3, !dbg !1494
  br i1 %1126, label %1131, label %1127, !dbg !1495

1127:                                             ; preds = %1120
  %1128 = load i64, i64* %16, align 8, !dbg !1496
  %1129 = and i64 %1128, 1024, !dbg !1497
  %1130 = icmp ne i64 %1129, 0, !dbg !1497
  br i1 %1130, label %1131, label %1182, !dbg !1498

1131:                                             ; preds = %1127, %1120
  %1132 = load i64, i64* %16, align 8, !dbg !1499
  %1133 = and i64 %1132, 1024, !dbg !1502
  %1134 = icmp ne i64 %1133, 0, !dbg !1502
  br i1 %1134, label %1158, label %1135, !dbg !1503

1135:                                             ; preds = %1131
  %1136 = load i64, i64* %16, align 8, !dbg !1504
  %1137 = and i64 %1136, 512, !dbg !1507
  %1138 = icmp ne i64 %1137, 0, !dbg !1507
  br i1 %1138, label %1139, label %1148, !dbg !1508

1139:                                             ; preds = %1135
  %1140 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1509
  %1141 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1511
  %1142 = load i32, i32* %1141, align 8, !dbg !1511
  %1143 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1511
  %1144 = load i32, i32* %1143, align 4, !dbg !1511
  %1145 = load i8, i8* %27, align 1, !dbg !1512
  %1146 = sext i8 %1145 to i32, !dbg !1512
  %1147 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %1140, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 noundef %1142, i32 noundef %1144, i32 noundef %1146) #8, !dbg !1513
  br label %1479, !dbg !1514

1148:                                             ; preds = %1135
  %1149 = load i64, i64* %17, align 8, !dbg !1515
  %1150 = icmp eq i64 %1149, 1, !dbg !1517
  br i1 %1150, label %1151, label %1168, !dbg !1518

1151:                                             ; preds = %1148
  %1152 = load i8, i8* %27, align 1, !dbg !1519
  %1153 = sext i8 %1152 to i32, !dbg !1519
  %1154 = icmp eq i32 %1153, 48, !dbg !1520
  br i1 %1154, label %1155, label %1168, !dbg !1521

1155:                                             ; preds = %1151
  %1156 = load i64, i64* %16, align 8, !dbg !1522
  %1157 = or i64 %1156, 512, !dbg !1522
  store i64 %1157, i64* %16, align 8, !dbg !1522
  br label %1168, !dbg !1523

1158:                                             ; preds = %1131
  %1159 = load i64, i64* %16, align 8, !dbg !1524
  %1160 = or i64 %1159, 2048, !dbg !1524
  store i64 %1160, i64* %16, align 8, !dbg !1524
  %1161 = load i64, i64* %18, align 8, !dbg !1526
  %1162 = mul nsw i64 %1161, 10, !dbg !1527
  %1163 = load i8, i8* %27, align 1, !dbg !1528
  %1164 = sext i8 %1163 to i32, !dbg !1528
  %1165 = sub nsw i32 %1164, 48, !dbg !1529
  %1166 = sext i32 %1165 to i64, !dbg !1530
  %1167 = add nsw i64 %1162, %1166, !dbg !1531
  store i64 %1167, i64* %18, align 8, !dbg !1532
  br label %1451, !dbg !1533

1168:                                             ; preds = %1148, %1151, %1155
  %1169 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1534
  %1170 = getelementptr inbounds %struct._json_value, %struct._json_value* %1169, i32 0, i32 2, !dbg !1535
  %1171 = bitcast %union.anon* %1170 to i64*, !dbg !1536
  %1172 = load i64, i64* %1171, align 8, !dbg !1536
  %1173 = mul nsw i64 %1172, 10, !dbg !1537
  %1174 = load i8, i8* %27, align 1, !dbg !1538
  %1175 = sext i8 %1174 to i32, !dbg !1538
  %1176 = sub nsw i32 %1175, 48, !dbg !1539
  %1177 = sext i32 %1176 to i64, !dbg !1540
  %1178 = add nsw i64 %1173, %1177, !dbg !1541
  %1179 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1542
  %1180 = getelementptr inbounds %struct._json_value, %struct._json_value* %1179, i32 0, i32 2, !dbg !1543
  %1181 = bitcast %union.anon* %1180 to i64*, !dbg !1544
  store i64 %1178, i64* %1181, align 8, !dbg !1545
  br label %1451, !dbg !1546

1182:                                             ; preds = %1127
  %1183 = load i64, i64* %19, align 8, !dbg !1547
  %1184 = mul nsw i64 %1183, 10, !dbg !1548
  %1185 = load i8, i8* %27, align 1, !dbg !1549
  %1186 = sext i8 %1185 to i32, !dbg !1549
  %1187 = sub nsw i32 %1186, 48, !dbg !1550
  %1188 = sext i32 %1187 to i64, !dbg !1551
  %1189 = add nsw i64 %1184, %1188, !dbg !1552
  store i64 %1189, i64* %19, align 8, !dbg !1553
  br label %1451, !dbg !1554

1190:                                             ; preds = %1109
  %1191 = load i8, i8* %27, align 1, !dbg !1555
  %1192 = sext i8 %1191 to i32, !dbg !1555
  %1193 = icmp eq i32 %1192, 43, !dbg !1557
  br i1 %1193, label %1198, label %1194, !dbg !1558

1194:                                             ; preds = %1190
  %1195 = load i8, i8* %27, align 1, !dbg !1559
  %1196 = sext i8 %1195 to i32, !dbg !1559
  %1197 = icmp eq i32 %1196, 45, !dbg !1560
  br i1 %1197, label %1198, label %1215, !dbg !1561

1198:                                             ; preds = %1194, %1190
  %1199 = load i64, i64* %16, align 8, !dbg !1562
  %1200 = and i64 %1199, 1024, !dbg !1565
  %1201 = icmp ne i64 %1200, 0, !dbg !1565
  br i1 %1201, label %1202, label %1245, !dbg !1566

1202:                                             ; preds = %1198
  %1203 = load i64, i64* %16, align 8, !dbg !1567
  %1204 = and i64 %1203, 2048, !dbg !1568
  %1205 = icmp ne i64 %1204, 0, !dbg !1568
  br i1 %1205, label %1245, label %1206, !dbg !1569

1206:                                             ; preds = %1202
  %1207 = load i64, i64* %16, align 8, !dbg !1570
  %1208 = or i64 %1207, 2048, !dbg !1570
  store i64 %1208, i64* %16, align 8, !dbg !1570
  %1209 = load i8, i8* %27, align 1, !dbg !1572
  %1210 = sext i8 %1209 to i32, !dbg !1572
  %1211 = icmp eq i32 %1210, 45, !dbg !1574
  br i1 %1211, label %1212, label %1451, !dbg !1575

1212:                                             ; preds = %1206
  %1213 = load i64, i64* %16, align 8, !dbg !1576
  %1214 = or i64 %1213, 4096, !dbg !1576
  store i64 %1214, i64* %16, align 8, !dbg !1576
  br label %1451, !dbg !1577

1215:                                             ; preds = %1194
  %1216 = load i8, i8* %27, align 1, !dbg !1578
  %1217 = sext i8 %1216 to i32, !dbg !1578
  %1218 = icmp eq i32 %1217, 46, !dbg !1580
  br i1 %1218, label %1219, label %1245, !dbg !1581

1219:                                             ; preds = %1215
  %1220 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1582
  %1221 = getelementptr inbounds %struct._json_value, %struct._json_value* %1220, i32 0, i32 1, !dbg !1583
  %1222 = load i32, i32* %1221, align 8, !dbg !1583
  %1223 = icmp eq i32 %1222, 3, !dbg !1584
  br i1 %1223, label %1224, label %1245, !dbg !1585

1224:                                             ; preds = %1219
  %1225 = load i64, i64* %17, align 8, !dbg !1586
  %1226 = icmp ne i64 %1225, 0, !dbg !1586
  br i1 %1226, label %1234, label %1227, !dbg !1589

1227:                                             ; preds = %1224
  %1228 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1590
  %1229 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1592
  %1230 = load i32, i32* %1229, align 8, !dbg !1592
  %1231 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1592
  %1232 = load i32, i32* %1231, align 4, !dbg !1592
  %1233 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %1228, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 noundef %1230, i32 noundef %1232) #8, !dbg !1593
  br label %1479, !dbg !1594

1234:                                             ; preds = %1224
  %1235 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1595
  %1236 = getelementptr inbounds %struct._json_value, %struct._json_value* %1235, i32 0, i32 1, !dbg !1596
  store i32 4, i32* %1236, align 8, !dbg !1597
  %1237 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1598
  %1238 = getelementptr inbounds %struct._json_value, %struct._json_value* %1237, i32 0, i32 2, !dbg !1599
  %1239 = bitcast %union.anon* %1238 to i64*, !dbg !1600
  %1240 = load i64, i64* %1239, align 8, !dbg !1600
  %1241 = sitofp i64 %1240 to double, !dbg !1601
  %1242 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1602
  %1243 = getelementptr inbounds %struct._json_value, %struct._json_value* %1242, i32 0, i32 2, !dbg !1603
  %1244 = bitcast %union.anon* %1243 to double*, !dbg !1604
  store double %1241, double* %1244, align 8, !dbg !1605
  store i64 0, i64* %17, align 8, !dbg !1606
  br label %1451, !dbg !1607

1245:                                             ; preds = %1215, %1219, %1198, %1202
  %1246 = load i64, i64* %16, align 8, !dbg !1608
  %1247 = and i64 %1246, 1024, !dbg !1610
  %1248 = icmp ne i64 %1247, 0, !dbg !1610
  br i1 %1248, label %1305, label %1249, !dbg !1611

1249:                                             ; preds = %1245
  %1250 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1612
  %1251 = getelementptr inbounds %struct._json_value, %struct._json_value* %1250, i32 0, i32 1, !dbg !1615
  %1252 = load i32, i32* %1251, align 8, !dbg !1615
  %1253 = icmp eq i32 %1252, 4, !dbg !1616
  br i1 %1253, label %1254, label %1276, !dbg !1617

1254:                                             ; preds = %1249
  %1255 = load i64, i64* %17, align 8, !dbg !1618
  %1256 = icmp ne i64 %1255, 0, !dbg !1618
  br i1 %1256, label %1264, label %1257, !dbg !1621

1257:                                             ; preds = %1254
  %1258 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1622
  %1259 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1624
  %1260 = load i32, i32* %1259, align 8, !dbg !1624
  %1261 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1624
  %1262 = load i32, i32* %1261, align 4, !dbg !1624
  %1263 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %1258, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 noundef %1260, i32 noundef %1262) #8, !dbg !1625
  br label %1479, !dbg !1626

1264:                                             ; preds = %1254
  %1265 = load i64, i64* %19, align 8, !dbg !1627
  %1266 = sitofp i64 %1265 to double, !dbg !1628
  %1267 = load i64, i64* %17, align 8, !dbg !1629
  %1268 = sitofp i64 %1267 to double, !dbg !1630
  %1269 = call double @pow(double noundef 1.000000e+01, double noundef %1268) #8, !dbg !1631
  %1270 = fdiv double %1266, %1269, !dbg !1632
  %1271 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1633
  %1272 = getelementptr inbounds %struct._json_value, %struct._json_value* %1271, i32 0, i32 2, !dbg !1634
  %1273 = bitcast %union.anon* %1272 to double*, !dbg !1635
  %1274 = load double, double* %1273, align 8, !dbg !1636
  %1275 = fadd double %1274, %1270, !dbg !1636
  store double %1275, double* %1273, align 8, !dbg !1636
  br label %1276, !dbg !1637

1276:                                             ; preds = %1264, %1249
  %1277 = load i8, i8* %27, align 1, !dbg !1638
  %1278 = sext i8 %1277 to i32, !dbg !1638
  %1279 = icmp eq i32 %1278, 101, !dbg !1640
  br i1 %1279, label %1284, label %1280, !dbg !1641

1280:                                             ; preds = %1276
  %1281 = load i8, i8* %27, align 1, !dbg !1642
  %1282 = sext i8 %1281 to i32, !dbg !1642
  %1283 = icmp eq i32 %1282, 69, !dbg !1643
  br i1 %1283, label %1284, label %1330, !dbg !1644

1284:                                             ; preds = %1280, %1276
  %1285 = load i64, i64* %16, align 8, !dbg !1645
  %1286 = or i64 %1285, 1024, !dbg !1645
  store i64 %1286, i64* %16, align 8, !dbg !1645
  %1287 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1647
  %1288 = getelementptr inbounds %struct._json_value, %struct._json_value* %1287, i32 0, i32 1, !dbg !1649
  %1289 = load i32, i32* %1288, align 8, !dbg !1649
  %1290 = icmp eq i32 %1289, 3, !dbg !1650
  br i1 %1290, label %1291, label %1302, !dbg !1651

1291:                                             ; preds = %1284
  %1292 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1652
  %1293 = getelementptr inbounds %struct._json_value, %struct._json_value* %1292, i32 0, i32 1, !dbg !1654
  store i32 4, i32* %1293, align 8, !dbg !1655
  %1294 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1656
  %1295 = getelementptr inbounds %struct._json_value, %struct._json_value* %1294, i32 0, i32 2, !dbg !1657
  %1296 = bitcast %union.anon* %1295 to i64*, !dbg !1658
  %1297 = load i64, i64* %1296, align 8, !dbg !1658
  %1298 = sitofp i64 %1297 to double, !dbg !1659
  %1299 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1660
  %1300 = getelementptr inbounds %struct._json_value, %struct._json_value* %1299, i32 0, i32 2, !dbg !1661
  %1301 = bitcast %union.anon* %1300 to double*, !dbg !1662
  store double %1298, double* %1301, align 8, !dbg !1663
  br label %1302, !dbg !1664

1302:                                             ; preds = %1291, %1284
  store i64 0, i64* %17, align 8, !dbg !1665
  %1303 = load i64, i64* %16, align 8, !dbg !1666
  %1304 = and i64 %1303, -513, !dbg !1666
  store i64 %1304, i64* %16, align 8, !dbg !1666
  br label %1451, !dbg !1667

1305:                                             ; preds = %1245
  %1306 = load i64, i64* %17, align 8, !dbg !1668
  %1307 = icmp ne i64 %1306, 0, !dbg !1668
  br i1 %1307, label %1315, label %1308, !dbg !1671

1308:                                             ; preds = %1305
  %1309 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1672
  %1310 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1674
  %1311 = load i32, i32* %1310, align 8, !dbg !1674
  %1312 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1674
  %1313 = load i32, i32* %1312, align 4, !dbg !1674
  %1314 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %1309, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 noundef %1311, i32 noundef %1313) #8, !dbg !1675
  br label %1479, !dbg !1676

1315:                                             ; preds = %1305
  %1316 = load i64, i64* %16, align 8, !dbg !1677
  %1317 = and i64 %1316, 4096, !dbg !1678
  %1318 = icmp ne i64 %1317, 0, !dbg !1678
  %1319 = load i64, i64* %18, align 8, !dbg !1677
  %1320 = sub nsw i64 0, %1319, !dbg !1677
  %1321 = load i64, i64* %18, align 8, !dbg !1677
  %1322 = select i1 %1318, i64 %1320, i64 %1321, !dbg !1677
  %1323 = sitofp i64 %1322 to double, !dbg !1679
  %1324 = call double @pow(double noundef 1.000000e+01, double noundef %1323) #8, !dbg !1680
  %1325 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1681
  %1326 = getelementptr inbounds %struct._json_value, %struct._json_value* %1325, i32 0, i32 2, !dbg !1682
  %1327 = bitcast %union.anon* %1326 to double*, !dbg !1683
  %1328 = load double, double* %1327, align 8, !dbg !1684
  %1329 = fmul double %1328, %1324, !dbg !1684
  store double %1329, double* %1327, align 8, !dbg !1684
  br label %1330

1330:                                             ; preds = %1280, %1315
  %1331 = load i64, i64* %16, align 8, !dbg !1685
  %1332 = and i64 %1331, 256, !dbg !1687
  %1333 = icmp ne i64 %1332, 0, !dbg !1687
  br i1 %1333, label %1334, label %1357, !dbg !1688

1334:                                             ; preds = %1330
  %1335 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1689
  %1336 = getelementptr inbounds %struct._json_value, %struct._json_value* %1335, i32 0, i32 1, !dbg !1692
  %1337 = load i32, i32* %1336, align 8, !dbg !1692
  %1338 = icmp eq i32 %1337, 3, !dbg !1693
  br i1 %1338, label %1339, label %1348, !dbg !1694

1339:                                             ; preds = %1334
  %1340 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1695
  %1341 = getelementptr inbounds %struct._json_value, %struct._json_value* %1340, i32 0, i32 2, !dbg !1696
  %1342 = bitcast %union.anon* %1341 to i64*, !dbg !1697
  %1343 = load i64, i64* %1342, align 8, !dbg !1697
  %1344 = sub nsw i64 0, %1343, !dbg !1698
  %1345 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1699
  %1346 = getelementptr inbounds %struct._json_value, %struct._json_value* %1345, i32 0, i32 2, !dbg !1700
  %1347 = bitcast %union.anon* %1346 to i64*, !dbg !1701
  store i64 %1344, i64* %1347, align 8, !dbg !1702
  br label %1357, !dbg !1699

1348:                                             ; preds = %1334
  %1349 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1703
  %1350 = getelementptr inbounds %struct._json_value, %struct._json_value* %1349, i32 0, i32 2, !dbg !1704
  %1351 = bitcast %union.anon* %1350 to double*, !dbg !1705
  %1352 = load double, double* %1351, align 8, !dbg !1705
  %1353 = fneg double %1352, !dbg !1706
  %1354 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1707
  %1355 = getelementptr inbounds %struct._json_value, %struct._json_value* %1354, i32 0, i32 2, !dbg !1708
  %1356 = bitcast %union.anon* %1355 to double*, !dbg !1709
  store double %1353, double* %1356, align 8, !dbg !1710
  br label %1357

1357:                                             ; preds = %1339, %1348, %1330
  %1358 = load i64, i64* %16, align 8, !dbg !1711
  %1359 = or i64 %1358, 3, !dbg !1711
  store i64 %1359, i64* %16, align 8, !dbg !1711
  br label %1360, !dbg !1712

1360:                                             ; preds = %1357, %1097, %1089, %1082, %1059, %781, %1044, %1035, %969, %934, %889
  %1361 = load i64, i64* %16, align 8, !dbg !1713
  %1362 = and i64 %1361, 2, !dbg !1715
  %1363 = icmp ne i64 %1362, 0, !dbg !1715
  br i1 %1363, label %1364, label %1370, !dbg !1716

1364:                                             ; preds = %1360
  %1365 = load i64, i64* %16, align 8, !dbg !1717
  %1366 = and i64 %1365, -3, !dbg !1717
  store i64 %1366, i64* %16, align 8, !dbg !1717
  %1367 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1719
  %1368 = load i8*, i8** %1367, align 8, !dbg !1720
  %1369 = getelementptr inbounds i8, i8* %1368, i32 -1, !dbg !1720
  store i8* %1369, i8** %1367, align 8, !dbg !1720
  br label %1370, !dbg !1721

1370:                                             ; preds = %1364, %1360
  %1371 = load i64, i64* %16, align 8, !dbg !1722
  %1372 = and i64 %1371, 1, !dbg !1724
  %1373 = icmp ne i64 %1372, 0, !dbg !1724
  br i1 %1373, label %1374, label %1451, !dbg !1725

1374:                                             ; preds = %1370
  %1375 = load i64, i64* %16, align 8, !dbg !1726
  %1376 = and i64 %1375, -2, !dbg !1728
  %1377 = or i64 %1376, 4, !dbg !1729
  store i64 %1377, i64* %16, align 8, !dbg !1730
  %1378 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1731
  %1379 = getelementptr inbounds %struct._json_value, %struct._json_value* %1378, i32 0, i32 0, !dbg !1733
  %1380 = load %struct._json_value*, %struct._json_value** %1379, align 8, !dbg !1733
  %1381 = icmp ne %struct._json_value* %1380, null, !dbg !1731
  br i1 %1381, label %1385, label %1382, !dbg !1734

1382:                                             ; preds = %1374
  %1383 = load i64, i64* %16, align 8, !dbg !1735
  %1384 = or i64 %1383, 128, !dbg !1735
  store i64 %1384, i64* %16, align 8, !dbg !1735
  br label %1451, !dbg !1737

1385:                                             ; preds = %1374
  %1386 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1738
  %1387 = getelementptr inbounds %struct._json_value, %struct._json_value* %1386, i32 0, i32 0, !dbg !1740
  %1388 = load %struct._json_value*, %struct._json_value** %1387, align 8, !dbg !1740
  %1389 = getelementptr inbounds %struct._json_value, %struct._json_value* %1388, i32 0, i32 1, !dbg !1741
  %1390 = load i32, i32* %1389, align 8, !dbg !1741
  %1391 = icmp eq i32 %1390, 2, !dbg !1742
  br i1 %1391, label %1392, label %1395, !dbg !1743

1392:                                             ; preds = %1385
  %1393 = load i64, i64* %16, align 8, !dbg !1744
  %1394 = or i64 %1393, 8, !dbg !1744
  store i64 %1394, i64* %16, align 8, !dbg !1744
  br label %1395, !dbg !1745

1395:                                             ; preds = %1392, %1385
  %1396 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !1746
  %1397 = load i32, i32* %1396, align 8, !dbg !1746
  %1398 = icmp ne i32 %1397, 0, !dbg !1748
  br i1 %1398, label %1435, label %1399, !dbg !1749

1399:                                             ; preds = %1395
  call void @llvm.dbg.declare(metadata %struct._json_value** %29, metadata !1750, metadata !DIExpression()), !dbg !1752
  %1400 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1753
  %1401 = getelementptr inbounds %struct._json_value, %struct._json_value* %1400, i32 0, i32 0, !dbg !1754
  %1402 = load %struct._json_value*, %struct._json_value** %1401, align 8, !dbg !1754
  store %struct._json_value* %1402, %struct._json_value** %29, align 8, !dbg !1752
  %1403 = load %struct._json_value*, %struct._json_value** %29, align 8, !dbg !1755
  %1404 = getelementptr inbounds %struct._json_value, %struct._json_value* %1403, i32 0, i32 1, !dbg !1756
  %1405 = load i32, i32* %1404, align 8, !dbg !1756
  switch i32 %1405, label %1435 [
    i32 1, label %1406
    i32 2, label %1421
  ], !dbg !1757

1406:                                             ; preds = %1399
  %1407 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1758
  %1408 = load %struct._json_value*, %struct._json_value** %29, align 8, !dbg !1760
  %1409 = getelementptr inbounds %struct._json_value, %struct._json_value* %1408, i32 0, i32 2, !dbg !1761
  %1410 = bitcast %union.anon* %1409 to %struct.anon.0*, !dbg !1762
  %1411 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1410, i32 0, i32 1, !dbg !1763
  %1412 = load %struct._json_object_entry*, %struct._json_object_entry** %1411, align 8, !dbg !1763
  %1413 = load %struct._json_value*, %struct._json_value** %29, align 8, !dbg !1764
  %1414 = getelementptr inbounds %struct._json_value, %struct._json_value* %1413, i32 0, i32 2, !dbg !1765
  %1415 = bitcast %union.anon* %1414 to %struct.anon.0*, !dbg !1766
  %1416 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1415, i32 0, i32 0, !dbg !1767
  %1417 = load i32, i32* %1416, align 8, !dbg !1767
  %1418 = zext i32 %1417 to i64, !dbg !1760
  %1419 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %1412, i64 %1418, !dbg !1760
  %1420 = getelementptr inbounds %struct._json_object_entry, %struct._json_object_entry* %1419, i32 0, i32 2, !dbg !1768
  store %struct._json_value* %1407, %struct._json_value** %1420, align 8, !dbg !1769
  br label %1435, !dbg !1770

1421:                                             ; preds = %1399
  %1422 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1771
  %1423 = load %struct._json_value*, %struct._json_value** %29, align 8, !dbg !1772
  %1424 = getelementptr inbounds %struct._json_value, %struct._json_value* %1423, i32 0, i32 2, !dbg !1773
  %1425 = bitcast %union.anon* %1424 to %struct.anon.1*, !dbg !1774
  %1426 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1425, i32 0, i32 1, !dbg !1775
  %1427 = load %struct._json_value**, %struct._json_value*** %1426, align 8, !dbg !1775
  %1428 = load %struct._json_value*, %struct._json_value** %29, align 8, !dbg !1776
  %1429 = getelementptr inbounds %struct._json_value, %struct._json_value* %1428, i32 0, i32 2, !dbg !1777
  %1430 = bitcast %union.anon* %1429 to %struct.anon.1*, !dbg !1778
  %1431 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1430, i32 0, i32 0, !dbg !1779
  %1432 = load i32, i32* %1431, align 8, !dbg !1779
  %1433 = zext i32 %1432 to i64, !dbg !1772
  %1434 = getelementptr inbounds %struct._json_value*, %struct._json_value** %1427, i64 %1433, !dbg !1772
  store %struct._json_value* %1422, %struct._json_value** %1434, align 8, !dbg !1780
  br label %1435, !dbg !1781

1435:                                             ; preds = %1406, %1421, %1399, %1395
  %1436 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1782
  %1437 = getelementptr inbounds %struct._json_value, %struct._json_value* %1436, i32 0, i32 0, !dbg !1784
  %1438 = load %struct._json_value*, %struct._json_value** %1437, align 8, !dbg !1784
  %1439 = getelementptr inbounds %struct._json_value, %struct._json_value* %1438, i32 0, i32 2, !dbg !1785
  %1440 = bitcast %union.anon* %1439 to %struct.anon.1*, !dbg !1786
  %1441 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %1440, i32 0, i32 0, !dbg !1787
  %1442 = load i32, i32* %1441, align 8, !dbg !1788
  %1443 = add i32 %1442, 1, !dbg !1788
  store i32 %1443, i32* %1441, align 8, !dbg !1788
  %1444 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 1, !dbg !1789
  %1445 = load i32, i32* %1444, align 8, !dbg !1789
  %1446 = icmp ugt i32 %1443, %1445, !dbg !1790
  br i1 %1446, label %1472, label %1447, !dbg !1791

1447:                                             ; preds = %1435
  %1448 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1792
  %1449 = getelementptr inbounds %struct._json_value, %struct._json_value* %1448, i32 0, i32 0, !dbg !1793
  %1450 = load %struct._json_value*, %struct._json_value** %1449, align 8, !dbg !1793
  store %struct._json_value* %1450, %struct._json_value** %12, align 8, !dbg !1794
  br label %1451, !dbg !1795

1451:                                             ; preds = %1370, %1206, %1212, %1066, %1063, %1063, %1063, %837, %768, %765, %765, %765, %747, %744, %744, %744, %661, %665, %671, %678, %641, %635, %153, %165, %177, %189, %201, %382, %509, %395, %392, %424, %421, %460, %457, %1447, %1382, %1302, %1234, %1182, %1168, %1158, %1047, %849, %843, %820, %800, %725, %722, %614, %601, %516
  %1452 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 5, !dbg !1796
  %1453 = load i8*, i8** %1452, align 8, !dbg !1797
  %1454 = getelementptr inbounds i8, i8* %1453, i32 1, !dbg !1797
  store i8* %1454, i8** %1452, align 8, !dbg !1797
  br label %104, !dbg !1798, !llvm.loop !1799

1455:                                             ; preds = %741
  %1456 = load %struct._json_value*, %struct._json_value** %13, align 8, !dbg !1802
  store %struct._json_value* %1456, %struct._json_value** %14, align 8, !dbg !1803
  %1457 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !1804
  %1458 = load i32, i32* %1457, align 8, !dbg !1805
  %1459 = add nsw i32 %1458, -1, !dbg !1805
  store i32 %1459, i32* %1457, align 8, !dbg !1805
  br label %96, !dbg !1806, !llvm.loop !1807

1460:                                             ; preds = %96
  %1461 = load %struct._json_value*, %struct._json_value** %13, align 8, !dbg !1809
  store %struct._json_value* %1461, %struct._json_value** %5, align 8, !dbg !1810
  br label %1525, !dbg !1810

1462:                                             ; preds = %937, %945, %952, %959, %895, %903, %910, %917, %924, %857, %865, %872, %879
  call void @llvm.dbg.label(metadata !1811), !dbg !1812
  %1463 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1813
  %1464 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1814
  %1465 = load i32, i32* %1464, align 8, !dbg !1814
  %1466 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1814
  %1467 = load i32, i32* %1466, align 4, !dbg !1814
  %1468 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %1463, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 noundef %1465, i32 noundef %1467) #8, !dbg !1815
  br label %1479, !dbg !1816

1469:                                             ; preds = %987, %966, %931, %886, %846, %840, %837
  call void @llvm.dbg.label(metadata !1817), !dbg !1818
  %1470 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1819
  %1471 = call i8* @strcpy(i8* noundef %1470, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1820
  br label %1479, !dbg !1821

1472:                                             ; preds = %1435, %130
  call void @llvm.dbg.label(metadata !1822), !dbg !1823
  %1473 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1824
  %1474 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 6, !dbg !1825
  %1475 = load i32, i32* %1474, align 8, !dbg !1825
  %1476 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 7, !dbg !1825
  %1477 = load i32, i32* %1476, align 4, !dbg !1825
  %1478 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %1473, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 noundef %1475, i32 noundef %1477) #8, !dbg !1826
  br label %1479, !dbg !1827

1479:                                             ; preds = %1472, %1469, %1462, %1308, %1257, %1227, %1139, %1100, %1075, %1050, %823, %803, %785, %752, %728, %710, %697, %654, %331, %244, %123
  call void @llvm.dbg.label(metadata !1828), !dbg !1829
  %1480 = load i8*, i8** %9, align 8, !dbg !1830
  %1481 = icmp ne i8* %1480, null, !dbg !1830
  br i1 %1481, label %1482, label %1493, !dbg !1832

1482:                                             ; preds = %1479
  %1483 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1833
  %1484 = load i8, i8* %1483, align 16, !dbg !1833
  %1485 = icmp ne i8 %1484, 0, !dbg !1833
  br i1 %1485, label %1486, label %1490, !dbg !1836

1486:                                             ; preds = %1482
  %1487 = load i8*, i8** %9, align 8, !dbg !1837
  %1488 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0, !dbg !1838
  %1489 = call i8* @strcpy(i8* noundef %1487, i8* noundef %1488) #8, !dbg !1839
  br label %1493, !dbg !1839

1490:                                             ; preds = %1482
  %1491 = load i8*, i8** %9, align 8, !dbg !1840
  %1492 = call i8* @strcpy(i8* noundef %1491, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1841
  br label %1493

1493:                                             ; preds = %1486, %1490, %1479
  %1494 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !1842
  %1495 = load i32, i32* %1494, align 8, !dbg !1842
  %1496 = icmp ne i32 %1495, 0, !dbg !1844
  br i1 %1496, label %1497, label %1499, !dbg !1845

1497:                                             ; preds = %1493
  %1498 = load %struct._json_value*, %struct._json_value** %13, align 8, !dbg !1846
  store %struct._json_value* %1498, %struct._json_value** %14, align 8, !dbg !1847
  br label %1499, !dbg !1848

1499:                                             ; preds = %1497, %1493
  br label %1500, !dbg !1849

1500:                                             ; preds = %1503, %1499
  %1501 = load %struct._json_value*, %struct._json_value** %14, align 8, !dbg !1850
  %1502 = icmp ne %struct._json_value* %1501, null, !dbg !1849
  br i1 %1502, label %1503, label %1517, !dbg !1849

1503:                                             ; preds = %1500
  %1504 = load %struct._json_value*, %struct._json_value** %14, align 8, !dbg !1851
  %1505 = getelementptr inbounds %struct._json_value, %struct._json_value* %1504, i32 0, i32 3, !dbg !1853
  %1506 = bitcast %union.anon.2* %1505 to %struct._json_value**, !dbg !1854
  %1507 = load %struct._json_value*, %struct._json_value** %1506, align 8, !dbg !1854
  store %struct._json_value* %1507, %struct._json_value** %12, align 8, !dbg !1855
  %1508 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 3, !dbg !1856
  %1509 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %1508, i32 0, i32 3, !dbg !1857
  %1510 = load void (i8*, i8*)*, void (i8*, i8*)** %1509, align 8, !dbg !1857
  %1511 = load %struct._json_value*, %struct._json_value** %14, align 8, !dbg !1858
  %1512 = bitcast %struct._json_value* %1511 to i8*, !dbg !1858
  %1513 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 3, !dbg !1859
  %1514 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %1513, i32 0, i32 4, !dbg !1860
  %1515 = load i8*, i8** %1514, align 8, !dbg !1860
  call void %1510(i8* noundef %1512, i8* noundef %1515), !dbg !1861
  %1516 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1862
  store %struct._json_value* %1516, %struct._json_value** %14, align 8, !dbg !1863
  br label %1500, !dbg !1849, !llvm.loop !1864

1517:                                             ; preds = %1500
  %1518 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 4, !dbg !1866
  %1519 = load i32, i32* %1518, align 8, !dbg !1866
  %1520 = icmp ne i32 %1519, 0, !dbg !1868
  br i1 %1520, label %1524, label %1521, !dbg !1869

1521:                                             ; preds = %1517
  %1522 = getelementptr inbounds %struct.json_state, %struct.json_state* %15, i32 0, i32 3, !dbg !1870
  %1523 = load %struct._json_value*, %struct._json_value** %13, align 8, !dbg !1871
  call void @json_value_free_ex(%struct.json_settings* noundef %1522, %struct._json_value* noundef %1523), !dbg !1872
  br label %1524, !dbg !1872

1524:                                             ; preds = %1521, %1517
  store %struct._json_value* null, %struct._json_value** %5, align 8, !dbg !1873
  br label %1525, !dbg !1873

1525:                                             ; preds = %1524, %1460
  %1526 = load %struct._json_value*, %struct._json_value** %5, align 8, !dbg !1874
  ret %struct._json_value* %1526, !dbg !1874
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @default_alloc(i64 noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !1875 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1876, metadata !DIExpression()), !dbg !1877
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1878, metadata !DIExpression()), !dbg !1879
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1880, metadata !DIExpression()), !dbg !1881
  %7 = load i32, i32* %5, align 4, !dbg !1882
  %8 = icmp ne i32 %7, 0, !dbg !1882
  br i1 %8, label %9, label %12, !dbg !1882

9:                                                ; preds = %3
  %10 = load i64, i64* %4, align 8, !dbg !1883
  %11 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %10) #8, !dbg !1884
  br label %15, !dbg !1882

12:                                               ; preds = %3
  %13 = load i64, i64* %4, align 8, !dbg !1885
  %14 = call noalias i8* @malloc(i64 noundef %13) #8, !dbg !1886
  br label %15, !dbg !1882

15:                                               ; preds = %12, %9
  %16 = phi i8* [ %11, %9 ], [ %14, %12 ], !dbg !1882
  ret i8* %16, !dbg !1887
}

; Function Attrs: noinline nounwind uwtable
define internal void @default_free(i8* noundef %0, i8* noundef %1) #0 !dbg !1888 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1889, metadata !DIExpression()), !dbg !1890
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1891, metadata !DIExpression()), !dbg !1892
  %5 = load i8*, i8** %3, align 8, !dbg !1893
  call void @free(i8* noundef %5) #8, !dbg !1894
  ret void, !dbg !1895
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #6

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @hex_value(i8 noundef signext %0) #0 !dbg !1896 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1899, metadata !DIExpression()), !dbg !1900
  %4 = call i16** @__ctype_b_loc() #9, !dbg !1901
  %5 = load i16*, i16** %4, align 8, !dbg !1901
  %6 = load i8, i8* %3, align 1, !dbg !1901
  %7 = sext i8 %6 to i32, !dbg !1901
  %8 = sext i32 %7 to i64, !dbg !1901
  %9 = getelementptr inbounds i16, i16* %5, i64 %8, !dbg !1901
  %10 = load i16, i16* %9, align 2, !dbg !1901
  %11 = zext i16 %10 to i32, !dbg !1901
  %12 = and i32 %11, 2048, !dbg !1901
  %13 = icmp ne i32 %12, 0, !dbg !1901
  br i1 %13, label %14, label %19, !dbg !1903

14:                                               ; preds = %1
  %15 = load i8, i8* %3, align 1, !dbg !1904
  %16 = sext i8 %15 to i32, !dbg !1904
  %17 = sub nsw i32 %16, 48, !dbg !1905
  %18 = trunc i32 %17 to i8, !dbg !1904
  store i8 %18, i8* %2, align 1, !dbg !1906
  br label %29, !dbg !1906

19:                                               ; preds = %1
  %20 = load i8, i8* %3, align 1, !dbg !1907
  %21 = sext i8 %20 to i32, !dbg !1907
  switch i32 %21, label %28 [
    i32 97, label %22
    i32 65, label %22
    i32 98, label %23
    i32 66, label %23
    i32 99, label %24
    i32 67, label %24
    i32 100, label %25
    i32 68, label %25
    i32 101, label %26
    i32 69, label %26
    i32 102, label %27
    i32 70, label %27
  ], !dbg !1908

22:                                               ; preds = %19, %19
  store i8 10, i8* %2, align 1, !dbg !1909
  br label %29, !dbg !1909

23:                                               ; preds = %19, %19
  store i8 11, i8* %2, align 1, !dbg !1911
  br label %29, !dbg !1911

24:                                               ; preds = %19, %19
  store i8 12, i8* %2, align 1, !dbg !1912
  br label %29, !dbg !1912

25:                                               ; preds = %19, %19
  store i8 13, i8* %2, align 1, !dbg !1913
  br label %29, !dbg !1913

26:                                               ; preds = %19, %19
  store i8 14, i8* %2, align 1, !dbg !1914
  br label %29, !dbg !1914

27:                                               ; preds = %19, %19
  store i8 15, i8* %2, align 1, !dbg !1915
  br label %29, !dbg !1915

28:                                               ; preds = %19
  store i8 -1, i8* %2, align 1, !dbg !1916
  br label %29, !dbg !1916

29:                                               ; preds = %28, %27, %26, %25, %24, %23, %22, %14
  %30 = load i8, i8* %2, align 1, !dbg !1917
  ret i8 %30, !dbg !1917
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @new_value(%struct.json_state* noundef %0, %struct._json_value** noundef %1, %struct._json_value** noundef %2, %struct._json_value** noundef %3, i32 noundef %4) #0 !dbg !1918 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.json_state*, align 8
  %8 = alloca %struct._json_value**, align 8
  %9 = alloca %struct._json_value**, align 8
  %10 = alloca %struct._json_value**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._json_value*, align 8
  %13 = alloca i32, align 4
  store %struct.json_state* %0, %struct.json_state** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.json_state** %7, metadata !1922, metadata !DIExpression()), !dbg !1923
  store %struct._json_value** %1, %struct._json_value*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._json_value*** %8, metadata !1924, metadata !DIExpression()), !dbg !1925
  store %struct._json_value** %2, %struct._json_value*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._json_value*** %9, metadata !1926, metadata !DIExpression()), !dbg !1927
  store %struct._json_value** %3, %struct._json_value*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._json_value*** %10, metadata !1928, metadata !DIExpression()), !dbg !1929
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1930, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.declare(metadata %struct._json_value** %12, metadata !1932, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1934, metadata !DIExpression()), !dbg !1935
  %14 = load %struct.json_state*, %struct.json_state** %7, align 8, !dbg !1936
  %15 = getelementptr inbounds %struct.json_state, %struct.json_state* %14, i32 0, i32 4, !dbg !1938
  %16 = load i32, i32* %15, align 8, !dbg !1938
  %17 = icmp ne i32 %16, 0, !dbg !1936
  br i1 %17, label %145, label %18, !dbg !1939

18:                                               ; preds = %5
  %19 = load %struct._json_value**, %struct._json_value*** %10, align 8, !dbg !1940
  %20 = load %struct._json_value*, %struct._json_value** %19, align 8, !dbg !1942
  %21 = load %struct._json_value**, %struct._json_value*** %8, align 8, !dbg !1943
  store %struct._json_value* %20, %struct._json_value** %21, align 8, !dbg !1944
  store %struct._json_value* %20, %struct._json_value** %12, align 8, !dbg !1945
  %22 = load %struct._json_value**, %struct._json_value*** %10, align 8, !dbg !1946
  %23 = load %struct._json_value*, %struct._json_value** %22, align 8, !dbg !1947
  %24 = getelementptr inbounds %struct._json_value, %struct._json_value* %23, i32 0, i32 3, !dbg !1948
  %25 = bitcast %union.anon.2* %24 to %struct._json_value**, !dbg !1949
  %26 = load %struct._json_value*, %struct._json_value** %25, align 8, !dbg !1949
  %27 = load %struct._json_value**, %struct._json_value*** %10, align 8, !dbg !1950
  store %struct._json_value* %26, %struct._json_value** %27, align 8, !dbg !1951
  %28 = load %struct._json_value**, %struct._json_value*** %9, align 8, !dbg !1952
  %29 = load %struct._json_value*, %struct._json_value** %28, align 8, !dbg !1954
  %30 = icmp ne %struct._json_value* %29, null, !dbg !1954
  br i1 %30, label %34, label %31, !dbg !1955

31:                                               ; preds = %18
  %32 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1956
  %33 = load %struct._json_value**, %struct._json_value*** %9, align 8, !dbg !1957
  store %struct._json_value* %32, %struct._json_value** %33, align 8, !dbg !1958
  br label %34, !dbg !1959

34:                                               ; preds = %31, %18
  %35 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1960
  %36 = getelementptr inbounds %struct._json_value, %struct._json_value* %35, i32 0, i32 1, !dbg !1961
  %37 = load i32, i32* %36, align 8, !dbg !1961
  switch i32 %37, label %144 [
    i32 2, label %38
    i32 1, label %71
    i32 5, label %122
  ], !dbg !1962

38:                                               ; preds = %34
  %39 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1963
  %40 = getelementptr inbounds %struct._json_value, %struct._json_value* %39, i32 0, i32 2, !dbg !1966
  %41 = bitcast %union.anon* %40 to %struct.anon.1*, !dbg !1967
  %42 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %41, i32 0, i32 0, !dbg !1968
  %43 = load i32, i32* %42, align 8, !dbg !1968
  %44 = icmp eq i32 %43, 0, !dbg !1969
  br i1 %44, label %45, label %49, !dbg !1970

45:                                               ; preds = %38
  %46 = load %struct._json_value**, %struct._json_value*** %8, align 8, !dbg !1971
  %47 = load %struct._json_value*, %struct._json_value** %46, align 8, !dbg !1973
  %48 = bitcast %struct._json_value* %47 to i8*, !dbg !1973
  call void @free(i8* noundef %48) #8, !dbg !1974
  br label %144, !dbg !1975

49:                                               ; preds = %38
  %50 = load %struct.json_state*, %struct.json_state** %7, align 8, !dbg !1976
  %51 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1978
  %52 = getelementptr inbounds %struct._json_value, %struct._json_value* %51, i32 0, i32 2, !dbg !1979
  %53 = bitcast %union.anon* %52 to %struct.anon.1*, !dbg !1980
  %54 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %53, i32 0, i32 0, !dbg !1981
  %55 = load i32, i32* %54, align 8, !dbg !1981
  %56 = zext i32 %55 to i64, !dbg !1978
  %57 = mul i64 %56, 8, !dbg !1982
  %58 = call i8* @json_alloc(%struct.json_state* noundef %50, i64 noundef %57, i32 noundef 0), !dbg !1983
  %59 = bitcast i8* %58 to %struct._json_value**, !dbg !1984
  %60 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1985
  %61 = getelementptr inbounds %struct._json_value, %struct._json_value* %60, i32 0, i32 2, !dbg !1986
  %62 = bitcast %union.anon* %61 to %struct.anon.1*, !dbg !1987
  %63 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %62, i32 0, i32 1, !dbg !1988
  store %struct._json_value** %59, %struct._json_value*** %63, align 8, !dbg !1989
  %64 = icmp ne %struct._json_value** %59, null, !dbg !1989
  br i1 %64, label %66, label %65, !dbg !1990

65:                                               ; preds = %49
  store i32 0, i32* %6, align 4, !dbg !1991
  br label %184, !dbg !1991

66:                                               ; preds = %49
  %67 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1993
  %68 = getelementptr inbounds %struct._json_value, %struct._json_value* %67, i32 0, i32 2, !dbg !1994
  %69 = bitcast %union.anon* %68 to %struct.anon.1*, !dbg !1995
  %70 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %69, i32 0, i32 0, !dbg !1996
  store i32 0, i32* %70, align 8, !dbg !1997
  br label %144, !dbg !1998

71:                                               ; preds = %34
  %72 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !1999
  %73 = getelementptr inbounds %struct._json_value, %struct._json_value* %72, i32 0, i32 2, !dbg !2001
  %74 = bitcast %union.anon* %73 to %struct.anon.0*, !dbg !2002
  %75 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %74, i32 0, i32 0, !dbg !2003
  %76 = load i32, i32* %75, align 8, !dbg !2003
  %77 = icmp eq i32 %76, 0, !dbg !2004
  br i1 %77, label %144, label %78, !dbg !2005

78:                                               ; preds = %71
  %79 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2006
  %80 = getelementptr inbounds %struct._json_value, %struct._json_value* %79, i32 0, i32 2, !dbg !2007
  %81 = bitcast %union.anon* %80 to %struct.anon.0*, !dbg !2008
  %82 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %81, i32 0, i32 0, !dbg !2009
  %83 = load i32, i32* %82, align 8, !dbg !2009
  %84 = zext i32 %83 to i64, !dbg !2006
  %85 = mul i64 24, %84, !dbg !2010
  %86 = trunc i64 %85 to i32, !dbg !2011
  store i32 %86, i32* %13, align 4, !dbg !2012
  %87 = load %struct.json_state*, %struct.json_state** %7, align 8, !dbg !2013
  %88 = load i32, i32* %13, align 4, !dbg !2015
  %89 = sext i32 %88 to i64, !dbg !2015
  %90 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2016
  %91 = getelementptr inbounds %struct._json_value, %struct._json_value* %90, i32 0, i32 2, !dbg !2017
  %92 = bitcast %union.anon* %91 to %struct.anon.0*, !dbg !2018
  %93 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %92, i32 0, i32 1, !dbg !2019
  %94 = load %struct._json_object_entry*, %struct._json_object_entry** %93, align 8, !dbg !2019
  %95 = ptrtoint %struct._json_object_entry* %94 to i64, !dbg !2020
  %96 = add i64 %89, %95, !dbg !2021
  %97 = call i8* @json_alloc(%struct.json_state* noundef %87, i64 noundef %96, i32 noundef 0), !dbg !2022
  %98 = bitcast i8* %97 to %struct._json_object_entry*, !dbg !2023
  %99 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2024
  %100 = getelementptr inbounds %struct._json_value, %struct._json_value* %99, i32 0, i32 2, !dbg !2025
  %101 = bitcast %union.anon* %100 to %struct.anon.0*, !dbg !2026
  %102 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %101, i32 0, i32 1, !dbg !2027
  store %struct._json_object_entry* %98, %struct._json_object_entry** %102, align 8, !dbg !2028
  %103 = icmp ne %struct._json_object_entry* %98, null, !dbg !2028
  br i1 %103, label %105, label %104, !dbg !2029

104:                                              ; preds = %78
  store i32 0, i32* %6, align 4, !dbg !2030
  br label %184, !dbg !2030

105:                                              ; preds = %78
  %106 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2032
  %107 = getelementptr inbounds %struct._json_value, %struct._json_value* %106, i32 0, i32 2, !dbg !2033
  %108 = bitcast %union.anon* %107 to %struct.anon.0*, !dbg !2034
  %109 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %108, i32 0, i32 1, !dbg !2035
  %110 = bitcast %struct._json_object_entry** %109 to i8**, !dbg !2036
  %111 = load i8*, i8** %110, align 8, !dbg !2036
  %112 = load i32, i32* %13, align 4, !dbg !2037
  %113 = sext i32 %112 to i64, !dbg !2038
  %114 = getelementptr inbounds i8, i8* %111, i64 %113, !dbg !2038
  %115 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2039
  %116 = getelementptr inbounds %struct._json_value, %struct._json_value* %115, i32 0, i32 3, !dbg !2040
  %117 = bitcast %union.anon.2* %116 to i8**, !dbg !2041
  store i8* %114, i8** %117, align 8, !dbg !2042
  %118 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2043
  %119 = getelementptr inbounds %struct._json_value, %struct._json_value* %118, i32 0, i32 2, !dbg !2044
  %120 = bitcast %union.anon* %119 to %struct.anon.0*, !dbg !2045
  %121 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %120, i32 0, i32 0, !dbg !2046
  store i32 0, i32* %121, align 8, !dbg !2047
  br label %144, !dbg !2048

122:                                              ; preds = %34
  %123 = load %struct.json_state*, %struct.json_state** %7, align 8, !dbg !2049
  %124 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2051
  %125 = getelementptr inbounds %struct._json_value, %struct._json_value* %124, i32 0, i32 2, !dbg !2052
  %126 = bitcast %union.anon* %125 to %struct.anon*, !dbg !2053
  %127 = getelementptr inbounds %struct.anon, %struct.anon* %126, i32 0, i32 0, !dbg !2054
  %128 = load i32, i32* %127, align 8, !dbg !2054
  %129 = add i32 %128, 1, !dbg !2055
  %130 = zext i32 %129 to i64, !dbg !2056
  %131 = mul i64 %130, 1, !dbg !2057
  %132 = call i8* @json_alloc(%struct.json_state* noundef %123, i64 noundef %131, i32 noundef 0), !dbg !2058
  %133 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2059
  %134 = getelementptr inbounds %struct._json_value, %struct._json_value* %133, i32 0, i32 2, !dbg !2060
  %135 = bitcast %union.anon* %134 to %struct.anon*, !dbg !2061
  %136 = getelementptr inbounds %struct.anon, %struct.anon* %135, i32 0, i32 1, !dbg !2062
  store i8* %132, i8** %136, align 8, !dbg !2063
  %137 = icmp ne i8* %132, null, !dbg !2063
  br i1 %137, label %139, label %138, !dbg !2064

138:                                              ; preds = %122
  store i32 0, i32* %6, align 4, !dbg !2065
  br label %184, !dbg !2065

139:                                              ; preds = %122
  %140 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2067
  %141 = getelementptr inbounds %struct._json_value, %struct._json_value* %140, i32 0, i32 2, !dbg !2068
  %142 = bitcast %union.anon* %141 to %struct.anon*, !dbg !2069
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 0, !dbg !2070
  store i32 0, i32* %143, align 8, !dbg !2071
  br label %144, !dbg !2072

144:                                              ; preds = %34, %71, %139, %105, %66, %45
  store i32 1, i32* %6, align 4, !dbg !2073
  br label %184, !dbg !2073

145:                                              ; preds = %5
  %146 = load %struct.json_state*, %struct.json_state** %7, align 8, !dbg !2074
  %147 = load %struct.json_state*, %struct.json_state** %7, align 8, !dbg !2076
  %148 = getelementptr inbounds %struct.json_state, %struct.json_state* %147, i32 0, i32 3, !dbg !2077
  %149 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %148, i32 0, i32 5, !dbg !2078
  %150 = load i64, i64* %149, align 8, !dbg !2078
  %151 = add i64 40, %150, !dbg !2079
  %152 = call i8* @json_alloc(%struct.json_state* noundef %146, i64 noundef %151, i32 noundef 1), !dbg !2080
  %153 = bitcast i8* %152 to %struct._json_value*, !dbg !2081
  store %struct._json_value* %153, %struct._json_value** %12, align 8, !dbg !2082
  %154 = icmp ne %struct._json_value* %153, null, !dbg !2082
  br i1 %154, label %156, label %155, !dbg !2083

155:                                              ; preds = %145
  store i32 0, i32* %6, align 4, !dbg !2084
  br label %184, !dbg !2084

156:                                              ; preds = %145
  %157 = load %struct._json_value**, %struct._json_value*** %9, align 8, !dbg !2086
  %158 = load %struct._json_value*, %struct._json_value** %157, align 8, !dbg !2088
  %159 = icmp ne %struct._json_value* %158, null, !dbg !2088
  br i1 %159, label %163, label %160, !dbg !2089

160:                                              ; preds = %156
  %161 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2090
  %162 = load %struct._json_value**, %struct._json_value*** %9, align 8, !dbg !2091
  store %struct._json_value* %161, %struct._json_value** %162, align 8, !dbg !2092
  br label %163, !dbg !2093

163:                                              ; preds = %160, %156
  %164 = load i32, i32* %11, align 4, !dbg !2094
  %165 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2095
  %166 = getelementptr inbounds %struct._json_value, %struct._json_value* %165, i32 0, i32 1, !dbg !2096
  store i32 %164, i32* %166, align 8, !dbg !2097
  %167 = load %struct._json_value**, %struct._json_value*** %8, align 8, !dbg !2098
  %168 = load %struct._json_value*, %struct._json_value** %167, align 8, !dbg !2099
  %169 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2100
  %170 = getelementptr inbounds %struct._json_value, %struct._json_value* %169, i32 0, i32 0, !dbg !2101
  store %struct._json_value* %168, %struct._json_value** %170, align 8, !dbg !2102
  %171 = load %struct._json_value**, %struct._json_value*** %10, align 8, !dbg !2103
  %172 = load %struct._json_value*, %struct._json_value** %171, align 8, !dbg !2105
  %173 = icmp ne %struct._json_value* %172, null, !dbg !2105
  br i1 %173, label %174, label %180, !dbg !2106

174:                                              ; preds = %163
  %175 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2107
  %176 = load %struct._json_value**, %struct._json_value*** %10, align 8, !dbg !2108
  %177 = load %struct._json_value*, %struct._json_value** %176, align 8, !dbg !2109
  %178 = getelementptr inbounds %struct._json_value, %struct._json_value* %177, i32 0, i32 3, !dbg !2110
  %179 = bitcast %union.anon.2* %178 to %struct._json_value**, !dbg !2111
  store %struct._json_value* %175, %struct._json_value** %179, align 8, !dbg !2112
  br label %180, !dbg !2113

180:                                              ; preds = %174, %163
  %181 = load %struct._json_value*, %struct._json_value** %12, align 8, !dbg !2114
  %182 = load %struct._json_value**, %struct._json_value*** %8, align 8, !dbg !2115
  store %struct._json_value* %181, %struct._json_value** %182, align 8, !dbg !2116
  %183 = load %struct._json_value**, %struct._json_value*** %10, align 8, !dbg !2117
  store %struct._json_value* %181, %struct._json_value** %183, align 8, !dbg !2118
  store i32 1, i32* %6, align 4, !dbg !2119
  br label %184, !dbg !2119

184:                                              ; preds = %180, %155, %144, %138, %104, %65
  %185 = load i32, i32* %6, align 4, !dbg !2120
  ret i32 %185, !dbg !2120
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define internal i8* @json_alloc(%struct.json_state* noundef %0, i64 noundef %1, i32 noundef %2) #0 !dbg !2121 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.json_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.json_state* %0, %struct.json_state** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.json_state** %5, metadata !2124, metadata !DIExpression()), !dbg !2125
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2126, metadata !DIExpression()), !dbg !2127
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2128, metadata !DIExpression()), !dbg !2129
  %8 = load %struct.json_state*, %struct.json_state** %5, align 8, !dbg !2130
  %9 = getelementptr inbounds %struct.json_state, %struct.json_state* %8, i32 0, i32 2, !dbg !2132
  %10 = load i64, i64* %9, align 8, !dbg !2132
  %11 = load %struct.json_state*, %struct.json_state** %5, align 8, !dbg !2133
  %12 = getelementptr inbounds %struct.json_state, %struct.json_state* %11, i32 0, i32 0, !dbg !2134
  %13 = load i64, i64* %12, align 8, !dbg !2134
  %14 = sub i64 %10, %13, !dbg !2135
  %15 = load i64, i64* %6, align 8, !dbg !2136
  %16 = icmp ult i64 %14, %15, !dbg !2137
  br i1 %16, label %17, label %18, !dbg !2138

17:                                               ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !2139
  br label %48, !dbg !2139

18:                                               ; preds = %3
  %19 = load %struct.json_state*, %struct.json_state** %5, align 8, !dbg !2140
  %20 = getelementptr inbounds %struct.json_state, %struct.json_state* %19, i32 0, i32 3, !dbg !2142
  %21 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %20, i32 0, i32 0, !dbg !2143
  %22 = load i64, i64* %21, align 8, !dbg !2143
  %23 = icmp ne i64 %22, 0, !dbg !2140
  br i1 %23, label %24, label %36, !dbg !2144

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8, !dbg !2145
  %26 = load %struct.json_state*, %struct.json_state** %5, align 8, !dbg !2146
  %27 = getelementptr inbounds %struct.json_state, %struct.json_state* %26, i32 0, i32 0, !dbg !2147
  %28 = load i64, i64* %27, align 8, !dbg !2148
  %29 = add i64 %28, %25, !dbg !2148
  store i64 %29, i64* %27, align 8, !dbg !2148
  %30 = load %struct.json_state*, %struct.json_state** %5, align 8, !dbg !2149
  %31 = getelementptr inbounds %struct.json_state, %struct.json_state* %30, i32 0, i32 3, !dbg !2150
  %32 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %31, i32 0, i32 0, !dbg !2151
  %33 = load i64, i64* %32, align 8, !dbg !2151
  %34 = icmp ugt i64 %29, %33, !dbg !2152
  br i1 %34, label %35, label %36, !dbg !2153

35:                                               ; preds = %24
  store i8* null, i8** %4, align 8, !dbg !2154
  br label %48, !dbg !2154

36:                                               ; preds = %24, %18
  %37 = load %struct.json_state*, %struct.json_state** %5, align 8, !dbg !2156
  %38 = getelementptr inbounds %struct.json_state, %struct.json_state* %37, i32 0, i32 3, !dbg !2157
  %39 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %38, i32 0, i32 2, !dbg !2158
  %40 = load i8* (i64, i32, i8*)*, i8* (i64, i32, i8*)** %39, align 8, !dbg !2158
  %41 = load i64, i64* %6, align 8, !dbg !2159
  %42 = load i32, i32* %7, align 4, !dbg !2160
  %43 = load %struct.json_state*, %struct.json_state** %5, align 8, !dbg !2161
  %44 = getelementptr inbounds %struct.json_state, %struct.json_state* %43, i32 0, i32 3, !dbg !2162
  %45 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %44, i32 0, i32 4, !dbg !2163
  %46 = load i8*, i8** %45, align 8, !dbg !2163
  %47 = call i8* %40(i64 noundef %41, i32 noundef %42, i8* noundef %46), !dbg !2156
  store i8* %47, i8** %4, align 8, !dbg !2164
  br label %48, !dbg !2164

48:                                               ; preds = %36, %35, %17
  %49 = load i8*, i8** %4, align 8, !dbg !2165
  ret i8* %49, !dbg !2165
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #6

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._json_value* @json_parse(i8* noundef %0, i64 noundef %1) #0 !dbg !2166 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.json_settings, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2169, metadata !DIExpression()), !dbg !2170
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2171, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.declare(metadata %struct.json_settings* %5, metadata !2173, metadata !DIExpression()), !dbg !2174
  %6 = bitcast %struct.json_settings* %5 to i8*, !dbg !2174
  %7 = call i8* @memset(i8* %6, i32 0, i64 48), !dbg !2174
  %8 = load i8*, i8** %3, align 8, !dbg !2175
  %9 = load i64, i64* %4, align 8, !dbg !2176
  %10 = call %struct._json_value* @json_parse_ex(%struct.json_settings* noundef %5, i8* noundef %8, i64 noundef %9, i8* noundef null), !dbg !2177
  ret %struct._json_value* %10, !dbg !2178
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @json_value_free(%struct._json_value* noundef %0) #0 !dbg !2179 {
  %2 = alloca %struct._json_value*, align 8
  %3 = alloca %struct.json_settings, align 8
  store %struct._json_value* %0, %struct._json_value** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._json_value** %2, metadata !2182, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.declare(metadata %struct.json_settings* %3, metadata !2184, metadata !DIExpression()), !dbg !2185
  %4 = bitcast %struct.json_settings* %3 to i8*, !dbg !2185
  %5 = call i8* @memset(i8* %4, i32 0, i64 48), !dbg !2185
  %6 = getelementptr inbounds %struct.json_settings, %struct.json_settings* %3, i32 0, i32 3, !dbg !2186
  store void (i8*, i8*)* @default_free, void (i8*, i8*)** %6, align 8, !dbg !2187
  %7 = load %struct._json_value*, %struct._json_value** %2, align 8, !dbg !2188
  call void @json_value_free_ex(%struct.json_settings* noundef %3, %struct._json_value* noundef %7), !dbg !2189
  ret void, !dbg !2190
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !2191 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2197, metadata !DIExpression()), !dbg !2198
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2199, metadata !DIExpression()), !dbg !2200
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2201, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2203, metadata !DIExpression()), !dbg !2204
  %9 = load i8*, i8** %4, align 8, !dbg !2205
  store i8* %9, i8** %7, align 8, !dbg !2204
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2206, metadata !DIExpression()), !dbg !2207
  %10 = load i8*, i8** %5, align 8, !dbg !2208
  store i8* %10, i8** %8, align 8, !dbg !2207
  br label %11, !dbg !2209

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !2210
  %13 = add i64 %12, -1, !dbg !2210
  store i64 %13, i64* %6, align 8, !dbg !2210
  %14 = icmp ugt i64 %12, 0, !dbg !2211
  br i1 %14, label %15, label %21, !dbg !2209

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !2212
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !2212
  store i8* %17, i8** %8, align 8, !dbg !2212
  %18 = load i8, i8* %16, align 1, !dbg !2213
  %19 = load i8*, i8** %7, align 8, !dbg !2214
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !2214
  store i8* %20, i8** %7, align 8, !dbg !2214
  store i8 %18, i8* %19, align 1, !dbg !2215
  br label %11, !dbg !2209, !llvm.loop !2216

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !2217
  ret i8* %22, !dbg !2218
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #0 !dbg !2219 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2223, metadata !DIExpression()), !dbg !2224
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2225, metadata !DIExpression()), !dbg !2226
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2227, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2229, metadata !DIExpression()), !dbg !2230
  %8 = load i8*, i8** %4, align 8, !dbg !2231
  store i8* %8, i8** %7, align 8, !dbg !2230
  br label %9, !dbg !2232

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !2233
  %11 = add i64 %10, -1, !dbg !2233
  store i64 %11, i64* %6, align 8, !dbg !2233
  %12 = icmp ugt i64 %10, 0, !dbg !2234
  br i1 %12, label %13, label %18, !dbg !2232

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !2235
  %15 = trunc i32 %14 to i8, !dbg !2235
  %16 = load i8*, i8** %7, align 8, !dbg !2236
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !2236
  store i8* %17, i8** %7, align 8, !dbg !2236
  store i8 %15, i8* %16, align 1, !dbg !2237
  br label %9, !dbg !2232, !llvm.loop !2238

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !2239
  ret i8* %19, !dbg !2240
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!124, !2, !128, !130}
!llvm.ident = !{!132, !132, !132, !132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "json_value_none", scope: !2, file: !93, line: 38, type: !123, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !90, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/brooke/Code-Coverage-Tools-Benchmark/fuzzgoat_klee/fuzzgoat.c", directory: "/home/brooke", checksumkind: CSK_MD5, checksum: "b467fcfaf2f381e5c41b1e46a1ff02ae")
!4 = !{!5, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 77, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "Code-Coverage-Tools-Benchmark/fuzzgoat_klee/fuzzgoat.h", directory: "/home/brooke", checksumkind: CSK_MD5, checksum: "ca3a7e2df2530a87cbd65546c9b89284")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "json_none", value: 0)
!10 = !DIEnumerator(name: "json_object", value: 1)
!11 = !DIEnumerator(name: "json_array", value: 2)
!12 = !DIEnumerator(name: "json_integer", value: 3)
!13 = !DIEnumerator(name: "json_double", value: 4)
!14 = !DIEnumerator(name: "json_string", value: 5)
!15 = !DIEnumerator(name: "json_boolean", value: 6)
!16 = !DIEnumerator(name: "json_null", value: 7)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 46, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "43fd45dcf96e8fb7d8f14700096497c7")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!20 = !DIEnumerator(name: "_ISupper", value: 256)
!21 = !DIEnumerator(name: "_ISlower", value: 512)
!22 = !DIEnumerator(name: "_ISalpha", value: 1024)
!23 = !DIEnumerator(name: "_ISdigit", value: 2048)
!24 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!25 = !DIEnumerator(name: "_ISspace", value: 8192)
!26 = !DIEnumerator(name: "_ISprint", value: 16384)
!27 = !DIEnumerator(name: "_ISgraph", value: 32768)
!28 = !DIEnumerator(name: "_ISblank", value: 1)
!29 = !DIEnumerator(name: "_IScntrl", value: 2)
!30 = !DIEnumerator(name: "_ISpunct", value: 4)
!31 = !DIEnumerator(name: "_ISalnum", value: 8)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !70, !89, !41}
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_value", file: !6, line: 256, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_json_value", file: !6, line: 101, size: 320, elements: !44)
!44 = !{!45, !47, !49, !83}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !43, file: !6, line: 103, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !6, line: 105, baseType: !48, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_type", file: !6, line: 88, baseType: !5)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !43, file: !6, line: 153, baseType: !50, size: 128, offset: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !43, file: !6, line: 107, size: 128, elements: !51)
!51 = !{!52, !53, !59, !60, !65, !77}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !50, file: !6, line: 109, baseType: !37, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !50, file: !6, line: 110, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !55, line: 27, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "649b383a60bfa3eb90e85840b2b0be20")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !57, line: 44, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!58 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dbl", scope: !50, file: !6, line: 111, baseType: !39, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !50, file: !6, line: 118, baseType: !61, size: 128)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !6, line: 113, size: 128, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !61, file: !6, line: 115, baseType: !7, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !61, file: !6, line: 116, baseType: !36, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !50, file: !6, line: 135, baseType: !66, size: 128)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !6, line: 120, size: 128, elements: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !6, line: 122, baseType: !7, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !66, file: !6, line: 124, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_object_entry", file: !6, line: 99, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_json_object_entry", file: !6, line: 92, size: 192, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !6, line: 94, baseType: !36, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name_length", scope: !72, file: !6, line: 95, baseType: !7, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !72, file: !6, line: 97, baseType: !46, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !50, file: !6, line: 151, baseType: !78, size: 128)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !6, line: 137, size: 128, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !78, file: !6, line: 139, baseType: !7, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !78, file: !6, line: 140, baseType: !82, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !43, file: !6, line: 160, baseType: !84, size: 64, offset: 256)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !43, file: !6, line: 155, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next_alloc", scope: !84, file: !6, line: 157, baseType: !46, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "object_mem", scope: !84, file: !6, line: 158, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!90 = !{!91, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !0}
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!92 = distinct !DIGlobalVariable(name: "flag_seek_value", scope: !2, file: !93, line: 329, type: !94, isLocal: true, isDefinition: true)
!93 = !DIFile(filename: "Code-Coverage-Tools-Benchmark/fuzzgoat_klee/fuzzgoat.c", directory: "/home/brooke", checksumkind: CSK_MD5, checksum: "b467fcfaf2f381e5c41b1e46a1ff02ae")
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!96 = distinct !DIGlobalVariable(name: "flag_string", scope: !2, file: !93, line: 331, type: !94, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!98 = distinct !DIGlobalVariable(name: "flag_escaped", scope: !2, file: !93, line: 330, type: !94, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!100 = distinct !DIGlobalVariable(name: "flag_next", scope: !2, file: !93, line: 326, type: !94, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!102 = distinct !DIGlobalVariable(name: "flag_need_colon", scope: !2, file: !93, line: 332, type: !94, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression(DW_OP_constu, 8192, DW_OP_stack_value))
!104 = distinct !DIGlobalVariable(name: "flag_line_comment", scope: !2, file: !93, line: 339, type: !94, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression(DW_OP_constu, 16384, DW_OP_stack_value))
!106 = distinct !DIGlobalVariable(name: "flag_block_comment", scope: !2, file: !93, line: 340, type: !94, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!108 = distinct !DIGlobalVariable(name: "flag_done", scope: !2, file: !93, line: 333, type: !94, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!110 = distinct !DIGlobalVariable(name: "flag_need_comma", scope: !2, file: !93, line: 328, type: !94, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!112 = distinct !DIGlobalVariable(name: "flag_reproc", scope: !2, file: !93, line: 327, type: !94, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression(DW_OP_constu, 256, DW_OP_stack_value))
!114 = distinct !DIGlobalVariable(name: "flag_num_negative", scope: !2, file: !93, line: 334, type: !94, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!116 = distinct !DIGlobalVariable(name: "flag_num_e", scope: !2, file: !93, line: 336, type: !94, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression(DW_OP_constu, 2048, DW_OP_stack_value))
!118 = distinct !DIGlobalVariable(name: "flag_num_e_got_sign", scope: !2, file: !93, line: 337, type: !94, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression(DW_OP_constu, 4096, DW_OP_stack_value))
!120 = distinct !DIGlobalVariable(name: "flag_num_e_negative", scope: !2, file: !93, line: 338, type: !94, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression(DW_OP_constu, 512, DW_OP_stack_value))
!122 = distinct !DIGlobalVariable(name: "flag_num_zero", scope: !2, file: !93, line: 335, type: !94, isLocal: true, isDefinition: true)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !126, retainedTypes: !127, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "/home/brooke/Code-Coverage-Tools-Benchmark/fuzzgoat_klee/main.c", directory: "/home/brooke", checksumkind: CSK_MD5, checksum: "3855a79ae42f29d5388a2c7538bcb29a")
!126 = !{!5}
!127 = !{!36, !88}
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!129 = !DIFile(filename: "/home/brooke/klee/runtime/Freestanding/memcpy.c", directory: "/home/brooke/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!131 = !DIFile(filename: "/home/brooke/klee/runtime/Freestanding/memset.c", directory: "/home/brooke/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!132 = !{!"Ubuntu clang version 14.0.6"}
!133 = !{i32 7, !"Dwarf Version", i32 5}
!134 = !{i32 2, !"Debug Info Version", i32 3}
!135 = !{i32 1, !"wchar_size", i32 4}
!136 = !{i32 7, !"PIC Level", i32 2}
!137 = !{i32 7, !"PIE Level", i32 2}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = distinct !DISubprogram(name: "main", scope: !141, file: !141, line: 77, type: !142, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !144)
!141 = !DIFile(filename: "Code-Coverage-Tools-Benchmark/fuzzgoat_klee/main.c", directory: "/home/brooke", checksumkind: CSK_MD5, checksum: "3855a79ae42f29d5388a2c7538bcb29a")
!142 = !DISubroutineType(types: !143)
!143 = !{!37}
!144 = !{}
!145 = !DILocalVariable(name: "MAX_LEN", scope: !140, file: !141, line: 79, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!147 = !DILocation(line: 79, column: 15, scope: !140)
!148 = !DILocation(line: 80, column: 5, scope: !140)
!149 = !DILocalVariable(name: "file_contents", scope: !140, file: !141, line: 80, type: !150)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 512)
!153 = !DILocation(line: 80, column: 10, scope: !140)
!154 = !DILocalVariable(name: "json", scope: !140, file: !141, line: 81, type: !36)
!155 = !DILocation(line: 81, column: 16, scope: !140)
!156 = !DILocalVariable(name: "value", scope: !140, file: !141, line: 82, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_value", file: !6, line: 256, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_json_value", file: !6, line: 101, size: 320, elements: !160)
!160 = !{!161, !163, !164, !193}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !159, file: !6, line: 103, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !159, file: !6, line: 105, baseType: !48, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !159, file: !6, line: 153, baseType: !165, size: 128, offset: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !6, line: 107, size: 128, elements: !166)
!166 = !{!167, !168, !169, !170, !175, !187}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !165, file: !6, line: 109, baseType: !37, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !165, file: !6, line: 110, baseType: !54, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dbl", scope: !165, file: !6, line: 111, baseType: !39, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !165, file: !6, line: 118, baseType: !171, size: 128)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !165, file: !6, line: 113, size: 128, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !171, file: !6, line: 115, baseType: !7, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !171, file: !6, line: 116, baseType: !36, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !165, file: !6, line: 135, baseType: !176, size: 128)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !165, file: !6, line: 120, size: 128, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !176, file: !6, line: 122, baseType: !7, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !176, file: !6, line: 124, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_object_entry", file: !6, line: 99, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_json_object_entry", file: !6, line: 92, size: 192, elements: !183)
!183 = !{!184, !185, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !6, line: 94, baseType: !36, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name_length", scope: !182, file: !6, line: 95, baseType: !7, size: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !182, file: !6, line: 97, baseType: !162, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !165, file: !6, line: 151, baseType: !188, size: 128)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !165, file: !6, line: 137, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !188, file: !6, line: 139, baseType: !7, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !188, file: !6, line: 140, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !159, file: !6, line: 160, baseType: !194, size: 64, offset: 256)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !6, line: 155, size: 64, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next_alloc", scope: !194, file: !6, line: 157, baseType: !162, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "object_mem", scope: !194, file: !6, line: 158, baseType: !88, size: 64)
!198 = !DILocation(line: 82, column: 17, scope: !140)
!199 = !DILocation(line: 84, column: 5, scope: !140)
!200 = !DILocation(line: 85, column: 5, scope: !140)
!201 = !DILocation(line: 85, column: 32, scope: !140)
!202 = !DILocation(line: 87, column: 10, scope: !140)
!203 = !DILocation(line: 88, column: 24, scope: !140)
!204 = !DILocation(line: 88, column: 13, scope: !140)
!205 = !DILocation(line: 88, column: 11, scope: !140)
!206 = !DILocation(line: 90, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !140, file: !141, line: 90, column: 9)
!208 = !DILocation(line: 90, column: 15, scope: !207)
!209 = !DILocation(line: 90, column: 9, scope: !140)
!210 = !DILocation(line: 91, column: 23, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !141, line: 90, column: 24)
!212 = !DILocation(line: 91, column: 9, scope: !211)
!213 = !DILocation(line: 92, column: 25, scope: !211)
!214 = !DILocation(line: 92, column: 9, scope: !211)
!215 = !DILocation(line: 93, column: 5, scope: !211)
!216 = !DILocation(line: 95, column: 5, scope: !140)
!217 = !DILocation(line: 96, column: 1, scope: !140)
!218 = distinct !DISubprogram(name: "process_value", scope: !141, file: !141, line: 44, type: !219, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !144)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !157, !37}
!221 = !DILocalVariable(name: "value", arg: 1, scope: !218, file: !141, line: 44, type: !157)
!222 = !DILocation(line: 44, column: 39, scope: !218)
!223 = !DILocalVariable(name: "depth", arg: 2, scope: !218, file: !141, line: 44, type: !37)
!224 = !DILocation(line: 44, column: 50, scope: !218)
!225 = !DILocation(line: 46, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !218, file: !141, line: 46, column: 9)
!227 = !DILocation(line: 46, column: 15, scope: !226)
!228 = !DILocation(line: 46, column: 9, scope: !218)
!229 = !DILocation(line: 49, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !218, file: !141, line: 49, column: 9)
!231 = !DILocation(line: 49, column: 16, scope: !230)
!232 = !DILocation(line: 49, column: 21, scope: !230)
!233 = !DILocation(line: 49, column: 9, scope: !218)
!234 = !DILocation(line: 50, column: 27, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !141, line: 49, column: 37)
!236 = !DILocation(line: 50, column: 9, scope: !235)
!237 = !DILocation(line: 51, column: 5, scope: !235)
!238 = !DILocation(line: 52, column: 13, scope: !218)
!239 = !DILocation(line: 52, column: 20, scope: !218)
!240 = !DILocation(line: 52, column: 5, scope: !218)
!241 = !DILocation(line: 54, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !218, file: !141, line: 52, column: 26)
!243 = !DILocation(line: 55, column: 13, scope: !242)
!244 = !DILocation(line: 57, column: 28, scope: !242)
!245 = !DILocation(line: 57, column: 35, scope: !242)
!246 = !DILocation(line: 57, column: 41, scope: !242)
!247 = !DILocation(line: 57, column: 13, scope: !242)
!248 = !DILocation(line: 58, column: 13, scope: !242)
!249 = !DILocation(line: 60, column: 27, scope: !242)
!250 = !DILocation(line: 60, column: 34, scope: !242)
!251 = !DILocation(line: 60, column: 40, scope: !242)
!252 = !DILocation(line: 60, column: 13, scope: !242)
!253 = !DILocation(line: 61, column: 13, scope: !242)
!254 = !DILocation(line: 63, column: 44, scope: !242)
!255 = !DILocation(line: 63, column: 51, scope: !242)
!256 = !DILocation(line: 63, column: 53, scope: !242)
!257 = !DILocation(line: 63, column: 13, scope: !242)
!258 = !DILocation(line: 64, column: 13, scope: !242)
!259 = !DILocation(line: 66, column: 36, scope: !242)
!260 = !DILocation(line: 66, column: 43, scope: !242)
!261 = !DILocation(line: 66, column: 45, scope: !242)
!262 = !DILocation(line: 66, column: 13, scope: !242)
!263 = !DILocation(line: 67, column: 13, scope: !242)
!264 = !DILocation(line: 69, column: 36, scope: !242)
!265 = !DILocation(line: 69, column: 43, scope: !242)
!266 = !DILocation(line: 69, column: 45, scope: !242)
!267 = !DILocation(line: 69, column: 52, scope: !242)
!268 = !DILocation(line: 69, column: 13, scope: !242)
!269 = !DILocation(line: 70, column: 13, scope: !242)
!270 = !DILocation(line: 72, column: 34, scope: !242)
!271 = !DILocation(line: 72, column: 41, scope: !242)
!272 = !DILocation(line: 72, column: 43, scope: !242)
!273 = !DILocation(line: 72, column: 13, scope: !242)
!274 = !DILocation(line: 73, column: 13, scope: !242)
!275 = !DILocation(line: 75, column: 1, scope: !218)
!276 = distinct !DISubprogram(name: "print_depth_shift", scope: !141, file: !141, line: 7, type: !277, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !144)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !37}
!279 = !DILocalVariable(name: "depth", arg: 1, scope: !276, file: !141, line: 7, type: !37)
!280 = !DILocation(line: 7, column: 35, scope: !276)
!281 = !DILocalVariable(name: "j", scope: !276, file: !141, line: 9, type: !37)
!282 = !DILocation(line: 9, column: 9, scope: !276)
!283 = !DILocation(line: 10, column: 12, scope: !284)
!284 = distinct !DILexicalBlock(scope: !276, file: !141, line: 10, column: 5)
!285 = !DILocation(line: 10, column: 10, scope: !284)
!286 = !DILocation(line: 10, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !141, line: 10, column: 5)
!288 = !DILocation(line: 10, column: 21, scope: !287)
!289 = !DILocation(line: 10, column: 19, scope: !287)
!290 = !DILocation(line: 10, column: 5, scope: !284)
!291 = !DILocation(line: 11, column: 9, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !141, line: 10, column: 33)
!293 = !DILocation(line: 10, column: 29, scope: !287)
!294 = !DILocation(line: 10, column: 5, scope: !287)
!295 = distinct !{!295, !290, !296, !297}
!296 = !DILocation(line: 12, column: 5, scope: !284)
!297 = !{!"llvm.loop.mustprogress"}
!298 = !DILocation(line: 13, column: 1, scope: !276)
!299 = distinct !DISubprogram(name: "process_object", scope: !141, file: !141, line: 17, type: !219, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !144)
!300 = !DILocalVariable(name: "value", arg: 1, scope: !299, file: !141, line: 17, type: !157)
!301 = !DILocation(line: 17, column: 40, scope: !299)
!302 = !DILocalVariable(name: "depth", arg: 2, scope: !299, file: !141, line: 17, type: !37)
!303 = !DILocation(line: 17, column: 51, scope: !299)
!304 = !DILocalVariable(name: "length", scope: !299, file: !141, line: 19, type: !37)
!305 = !DILocation(line: 19, column: 9, scope: !299)
!306 = !DILocalVariable(name: "x", scope: !299, file: !141, line: 19, type: !37)
!307 = !DILocation(line: 19, column: 17, scope: !299)
!308 = !DILocation(line: 20, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !299, file: !141, line: 20, column: 9)
!310 = !DILocation(line: 20, column: 15, scope: !309)
!311 = !DILocation(line: 20, column: 9, scope: !299)
!312 = !DILocation(line: 23, column: 14, scope: !299)
!313 = !DILocation(line: 23, column: 21, scope: !299)
!314 = !DILocation(line: 23, column: 23, scope: !299)
!315 = !DILocation(line: 23, column: 30, scope: !299)
!316 = !DILocation(line: 23, column: 12, scope: !299)
!317 = !DILocation(line: 24, column: 12, scope: !318)
!318 = distinct !DILexicalBlock(scope: !299, file: !141, line: 24, column: 5)
!319 = !DILocation(line: 24, column: 10, scope: !318)
!320 = !DILocation(line: 24, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !141, line: 24, column: 5)
!322 = !DILocation(line: 24, column: 21, scope: !321)
!323 = !DILocation(line: 24, column: 19, scope: !321)
!324 = !DILocation(line: 24, column: 5, scope: !318)
!325 = !DILocation(line: 25, column: 27, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !141, line: 24, column: 34)
!327 = !DILocation(line: 25, column: 9, scope: !326)
!328 = !DILocation(line: 26, column: 42, scope: !326)
!329 = !DILocation(line: 26, column: 45, scope: !326)
!330 = !DILocation(line: 26, column: 52, scope: !326)
!331 = !DILocation(line: 26, column: 54, scope: !326)
!332 = !DILocation(line: 26, column: 61, scope: !326)
!333 = !DILocation(line: 26, column: 68, scope: !326)
!334 = !DILocation(line: 26, column: 71, scope: !326)
!335 = !DILocation(line: 26, column: 9, scope: !326)
!336 = !DILocation(line: 27, column: 23, scope: !326)
!337 = !DILocation(line: 27, column: 30, scope: !326)
!338 = !DILocation(line: 27, column: 32, scope: !326)
!339 = !DILocation(line: 27, column: 39, scope: !326)
!340 = !DILocation(line: 27, column: 46, scope: !326)
!341 = !DILocation(line: 27, column: 49, scope: !326)
!342 = !DILocation(line: 27, column: 56, scope: !326)
!343 = !DILocation(line: 27, column: 62, scope: !326)
!344 = !DILocation(line: 27, column: 9, scope: !326)
!345 = !DILocation(line: 24, column: 30, scope: !321)
!346 = !DILocation(line: 24, column: 5, scope: !321)
!347 = distinct !{!347, !324, !348, !297}
!348 = !DILocation(line: 28, column: 5, scope: !318)
!349 = !DILocation(line: 29, column: 1, scope: !299)
!350 = distinct !DISubprogram(name: "process_array", scope: !141, file: !141, line: 31, type: !219, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !124, retainedNodes: !144)
!351 = !DILocalVariable(name: "value", arg: 1, scope: !350, file: !141, line: 31, type: !157)
!352 = !DILocation(line: 31, column: 39, scope: !350)
!353 = !DILocalVariable(name: "depth", arg: 2, scope: !350, file: !141, line: 31, type: !37)
!354 = !DILocation(line: 31, column: 50, scope: !350)
!355 = !DILocalVariable(name: "length", scope: !350, file: !141, line: 33, type: !37)
!356 = !DILocation(line: 33, column: 9, scope: !350)
!357 = !DILocalVariable(name: "x", scope: !350, file: !141, line: 33, type: !37)
!358 = !DILocation(line: 33, column: 17, scope: !350)
!359 = !DILocation(line: 34, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !350, file: !141, line: 34, column: 9)
!361 = !DILocation(line: 34, column: 15, scope: !360)
!362 = !DILocation(line: 34, column: 9, scope: !350)
!363 = !DILocation(line: 37, column: 14, scope: !350)
!364 = !DILocation(line: 37, column: 21, scope: !350)
!365 = !DILocation(line: 37, column: 23, scope: !350)
!366 = !DILocation(line: 37, column: 29, scope: !350)
!367 = !DILocation(line: 37, column: 12, scope: !350)
!368 = !DILocation(line: 38, column: 5, scope: !350)
!369 = !DILocation(line: 39, column: 12, scope: !370)
!370 = distinct !DILexicalBlock(scope: !350, file: !141, line: 39, column: 5)
!371 = !DILocation(line: 39, column: 10, scope: !370)
!372 = !DILocation(line: 39, column: 17, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !141, line: 39, column: 5)
!374 = !DILocation(line: 39, column: 21, scope: !373)
!375 = !DILocation(line: 39, column: 19, scope: !373)
!376 = !DILocation(line: 39, column: 5, scope: !370)
!377 = !DILocation(line: 40, column: 23, scope: !378)
!378 = distinct !DILexicalBlock(scope: !373, file: !141, line: 39, column: 34)
!379 = !DILocation(line: 40, column: 30, scope: !378)
!380 = !DILocation(line: 40, column: 32, scope: !378)
!381 = !DILocation(line: 40, column: 38, scope: !378)
!382 = !DILocation(line: 40, column: 45, scope: !378)
!383 = !DILocation(line: 40, column: 49, scope: !378)
!384 = !DILocation(line: 40, column: 9, scope: !378)
!385 = !DILocation(line: 39, column: 30, scope: !373)
!386 = !DILocation(line: 39, column: 5, scope: !373)
!387 = distinct !{!387, !376, !388, !297}
!388 = !DILocation(line: 41, column: 5, scope: !370)
!389 = !DILocation(line: 42, column: 1, scope: !350)
!390 = distinct !DISubprogram(name: "json_value_free_ex", scope: !93, file: !93, line: 213, type: !391, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !144)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393, !41}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_settings", file: !6, line: 73, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 58, size: 384, elements: !396)
!396 = !{!397, !398, !399, !405, !409, !410}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory", scope: !395, file: !6, line: 60, baseType: !89, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "settings", scope: !395, file: !6, line: 61, baseType: !37, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mem_alloc", scope: !395, file: !6, line: 66, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!88, !403, !37, !88}
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !404, line: 46, baseType: !89)
!404 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mem_free", scope: !395, file: !6, line: 67, baseType: !406, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !88, !88}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !395, file: !6, line: 69, baseType: !88, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "value_extra", scope: !395, file: !6, line: 71, baseType: !403, size: 64, offset: 320)
!411 = !DILocalVariable(name: "settings", arg: 1, scope: !390, file: !93, line: 213, type: !393)
!412 = !DILocation(line: 213, column: 43, scope: !390)
!413 = !DILocalVariable(name: "value", arg: 2, scope: !390, file: !93, line: 213, type: !41)
!414 = !DILocation(line: 213, column: 66, scope: !390)
!415 = !DILocalVariable(name: "cur_value", scope: !390, file: !93, line: 215, type: !41)
!416 = !DILocation(line: 215, column: 18, scope: !390)
!417 = !DILocation(line: 217, column: 10, scope: !418)
!418 = distinct !DILexicalBlock(scope: !390, file: !93, line: 217, column: 9)
!419 = !DILocation(line: 217, column: 9, scope: !390)
!420 = !DILocation(line: 220, column: 5, scope: !390)
!421 = !DILocation(line: 220, column: 12, scope: !390)
!422 = !DILocation(line: 220, column: 19, scope: !390)
!423 = !DILocation(line: 222, column: 5, scope: !390)
!424 = !DILocation(line: 222, column: 12, scope: !390)
!425 = !DILocation(line: 224, column: 16, scope: !426)
!426 = distinct !DILexicalBlock(scope: !390, file: !93, line: 223, column: 5)
!427 = !DILocation(line: 224, column: 23, scope: !426)
!428 = !DILocation(line: 224, column: 8, scope: !426)
!429 = !DILocation(line: 228, column: 19, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !93, line: 228, column: 18)
!431 = distinct !DILexicalBlock(scope: !426, file: !93, line: 225, column: 8)
!432 = !DILocation(line: 228, column: 26, scope: !430)
!433 = !DILocation(line: 228, column: 28, scope: !430)
!434 = !DILocation(line: 228, column: 34, scope: !430)
!435 = !DILocation(line: 228, column: 18, scope: !431)
!436 = !DILocation(line: 230, column: 17, scope: !437)
!437 = distinct !DILexicalBlock(scope: !430, file: !93, line: 229, column: 14)
!438 = !DILocation(line: 230, column: 27, scope: !437)
!439 = !DILocation(line: 230, column: 37, scope: !437)
!440 = !DILocation(line: 230, column: 44, scope: !437)
!441 = !DILocation(line: 230, column: 46, scope: !437)
!442 = !DILocation(line: 230, column: 52, scope: !437)
!443 = !DILocation(line: 230, column: 60, scope: !437)
!444 = !DILocation(line: 230, column: 70, scope: !437)
!445 = !DILocation(line: 231, column: 17, scope: !437)
!446 = !DILocation(line: 234, column: 22, scope: !431)
!447 = !DILocation(line: 234, column: 29, scope: !431)
!448 = !DILocation(line: 234, column: 31, scope: !431)
!449 = !DILocation(line: 234, column: 37, scope: !431)
!450 = !DILocation(line: 234, column: 48, scope: !431)
!451 = !DILocation(line: 234, column: 55, scope: !431)
!452 = !DILocation(line: 234, column: 57, scope: !431)
!453 = !DILocation(line: 234, column: 63, scope: !431)
!454 = !DILocation(line: 234, column: 45, scope: !431)
!455 = !DILocation(line: 234, column: 20, scope: !431)
!456 = !DILocation(line: 235, column: 14, scope: !431)
!457 = distinct !{!457, !423, !458, !297}
!458 = !DILocation(line: 312, column: 5, scope: !390)
!459 = !DILocation(line: 239, column: 19, scope: !460)
!460 = distinct !DILexicalBlock(scope: !431, file: !93, line: 239, column: 18)
!461 = !DILocation(line: 239, column: 26, scope: !460)
!462 = !DILocation(line: 239, column: 28, scope: !460)
!463 = !DILocation(line: 239, column: 35, scope: !460)
!464 = !DILocation(line: 239, column: 18, scope: !431)
!465 = !DILocation(line: 241, column: 17, scope: !466)
!466 = distinct !DILexicalBlock(scope: !460, file: !93, line: 240, column: 14)
!467 = !DILocation(line: 241, column: 27, scope: !466)
!468 = !DILocation(line: 241, column: 37, scope: !466)
!469 = !DILocation(line: 241, column: 44, scope: !466)
!470 = !DILocation(line: 241, column: 46, scope: !466)
!471 = !DILocation(line: 241, column: 53, scope: !466)
!472 = !DILocation(line: 241, column: 61, scope: !466)
!473 = !DILocation(line: 241, column: 71, scope: !466)
!474 = !DILocation(line: 242, column: 17, scope: !466)
!475 = !DILocation(line: 258, column: 22, scope: !431)
!476 = !DILocation(line: 258, column: 29, scope: !431)
!477 = !DILocation(line: 258, column: 31, scope: !431)
!478 = !DILocation(line: 258, column: 38, scope: !431)
!479 = !DILocation(line: 258, column: 46, scope: !431)
!480 = !DILocation(line: 258, column: 53, scope: !431)
!481 = !DILocation(line: 258, column: 55, scope: !431)
!482 = !DILocation(line: 258, column: 62, scope: !431)
!483 = !DILocation(line: 258, column: 68, scope: !431)
!484 = !DILocation(line: 258, column: 72, scope: !431)
!485 = !DILocation(line: 258, column: 20, scope: !431)
!486 = !DILocation(line: 261, column: 14, scope: !431)
!487 = !DILocation(line: 278, column: 19, scope: !488)
!488 = distinct !DILexicalBlock(scope: !431, file: !93, line: 278, column: 18)
!489 = !DILocation(line: 278, column: 26, scope: !488)
!490 = !DILocation(line: 278, column: 28, scope: !488)
!491 = !DILocation(line: 278, column: 35, scope: !488)
!492 = !DILocation(line: 278, column: 18, scope: !431)
!493 = !DILocation(line: 279, column: 16, scope: !494)
!494 = distinct !DILexicalBlock(scope: !488, file: !93, line: 278, column: 42)
!495 = !DILocation(line: 279, column: 23, scope: !494)
!496 = !DILocation(line: 279, column: 25, scope: !494)
!497 = !DILocation(line: 279, column: 32, scope: !494)
!498 = !DILocation(line: 279, column: 35, scope: !494)
!499 = !DILocation(line: 280, column: 14, scope: !494)
!500 = !DILocation(line: 296, column: 18, scope: !501)
!501 = distinct !DILexicalBlock(scope: !431, file: !93, line: 296, column: 18)
!502 = !DILocation(line: 296, column: 25, scope: !501)
!503 = !DILocation(line: 296, column: 27, scope: !501)
!504 = !DILocation(line: 296, column: 34, scope: !501)
!505 = !DILocation(line: 296, column: 41, scope: !501)
!506 = !DILocation(line: 296, column: 18, scope: !431)
!507 = !DILocalVariable(name: "null_pointer", scope: !508, file: !93, line: 297, type: !36)
!508 = distinct !DILexicalBlock(scope: !501, file: !93, line: 296, column: 47)
!509 = !DILocation(line: 297, column: 22, scope: !508)
!510 = !DILocation(line: 298, column: 31, scope: !508)
!511 = !DILocation(line: 298, column: 30, scope: !508)
!512 = !DILocation(line: 298, column: 16, scope: !508)
!513 = !DILocation(line: 299, column: 14, scope: !508)
!514 = !DILocation(line: 302, column: 14, scope: !431)
!515 = !DILocation(line: 302, column: 24, scope: !431)
!516 = !DILocation(line: 302, column: 34, scope: !431)
!517 = !DILocation(line: 302, column: 41, scope: !431)
!518 = !DILocation(line: 302, column: 43, scope: !431)
!519 = !DILocation(line: 302, column: 50, scope: !431)
!520 = !DILocation(line: 302, column: 55, scope: !431)
!521 = !DILocation(line: 302, column: 65, scope: !431)
!522 = !DILocation(line: 303, column: 14, scope: !431)
!523 = !DILocation(line: 309, column: 20, scope: !426)
!524 = !DILocation(line: 309, column: 18, scope: !426)
!525 = !DILocation(line: 310, column: 16, scope: !426)
!526 = !DILocation(line: 310, column: 23, scope: !426)
!527 = !DILocation(line: 310, column: 14, scope: !426)
!528 = !DILocation(line: 311, column: 8, scope: !426)
!529 = !DILocation(line: 311, column: 18, scope: !426)
!530 = !DILocation(line: 311, column: 28, scope: !426)
!531 = !DILocation(line: 311, column: 39, scope: !426)
!532 = !DILocation(line: 311, column: 49, scope: !426)
!533 = !DILocation(line: 313, column: 2, scope: !390)
!534 = distinct !DISubprogram(name: "json_parse_ex", scope: !93, file: !93, line: 342, type: !535, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !144)
!535 = !DISubroutineType(types: !536)
!536 = !{!41, !393, !537, !403, !36}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!539 = !DILocalVariable(name: "settings", arg: 1, scope: !534, file: !93, line: 342, type: !393)
!540 = !DILocation(line: 342, column: 46, scope: !534)
!541 = !DILocalVariable(name: "json", arg: 2, scope: !534, file: !93, line: 343, type: !537)
!542 = !DILocation(line: 343, column: 48, scope: !534)
!543 = !DILocalVariable(name: "length", arg: 3, scope: !534, file: !93, line: 344, type: !403)
!544 = !DILocation(line: 344, column: 37, scope: !534)
!545 = !DILocalVariable(name: "error_buf", arg: 4, scope: !534, file: !93, line: 345, type: !36)
!546 = !DILocation(line: 345, column: 37, scope: !534)
!547 = !DILocalVariable(name: "error", scope: !534, file: !93, line: 347, type: !548)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1024, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 128)
!551 = !DILocation(line: 347, column: 15, scope: !534)
!552 = !DILocalVariable(name: "end", scope: !534, file: !93, line: 348, type: !537)
!553 = !DILocation(line: 348, column: 23, scope: !534)
!554 = !DILocalVariable(name: "top", scope: !534, file: !93, line: 349, type: !41)
!555 = !DILocation(line: 349, column: 18, scope: !534)
!556 = !DILocalVariable(name: "root", scope: !534, file: !93, line: 349, type: !41)
!557 = !DILocation(line: 349, column: 25, scope: !534)
!558 = !DILocalVariable(name: "alloc", scope: !534, file: !93, line: 349, type: !41)
!559 = !DILocation(line: 349, column: 33, scope: !534)
!560 = !DILocalVariable(name: "state", scope: !534, file: !93, line: 350, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_state", file: !93, line: 76, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 63, size: 768, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569, !570, !571}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "used_memory", scope: !562, file: !93, line: 65, baseType: !89, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "uint_max", scope: !562, file: !93, line: 67, baseType: !7, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ulong_max", scope: !562, file: !93, line: 68, baseType: !89, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "settings", scope: !562, file: !93, line: 70, baseType: !394, size: 384, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "first_pass", scope: !562, file: !93, line: 71, baseType: !37, size: 32, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !562, file: !93, line: 73, baseType: !537, size: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !562, file: !93, line: 74, baseType: !7, size: 32, offset: 704)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "cur_col", scope: !562, file: !93, line: 74, baseType: !7, size: 32, offset: 736)
!572 = !DILocation(line: 350, column: 16, scope: !534)
!573 = !DILocalVariable(name: "flags", scope: !534, file: !93, line: 351, type: !58)
!574 = !DILocation(line: 351, column: 10, scope: !534)
!575 = !DILocalVariable(name: "num_digits", scope: !534, file: !93, line: 352, type: !58)
!576 = !DILocation(line: 352, column: 10, scope: !534)
!577 = !DILocalVariable(name: "num_e", scope: !534, file: !93, line: 352, type: !58)
!578 = !DILocation(line: 352, column: 26, scope: !534)
!579 = !DILocalVariable(name: "num_fraction", scope: !534, file: !93, line: 353, type: !54)
!580 = !DILocation(line: 353, column: 16, scope: !534)
!581 = !DILocation(line: 357, column: 9, scope: !582)
!582 = distinct !DILexicalBlock(scope: !534, file: !93, line: 357, column: 9)
!583 = !DILocation(line: 357, column: 16, scope: !582)
!584 = !DILocation(line: 357, column: 21, scope: !582)
!585 = !DILocation(line: 357, column: 41, scope: !582)
!586 = !DILocation(line: 357, column: 24, scope: !582)
!587 = !DILocation(line: 357, column: 51, scope: !582)
!588 = !DILocation(line: 358, column: 21, scope: !582)
!589 = !DILocation(line: 358, column: 41, scope: !582)
!590 = !DILocation(line: 358, column: 24, scope: !582)
!591 = !DILocation(line: 358, column: 51, scope: !582)
!592 = !DILocation(line: 359, column: 21, scope: !582)
!593 = !DILocation(line: 359, column: 41, scope: !582)
!594 = !DILocation(line: 359, column: 24, scope: !582)
!595 = !DILocation(line: 359, column: 51, scope: !582)
!596 = !DILocation(line: 357, column: 9, scope: !534)
!597 = !DILocation(line: 361, column: 13, scope: !598)
!598 = distinct !DILexicalBlock(scope: !582, file: !93, line: 360, column: 5)
!599 = !DILocation(line: 362, column: 15, scope: !598)
!600 = !DILocation(line: 363, column: 5, scope: !598)
!601 = !DILocation(line: 365, column: 5, scope: !534)
!602 = !DILocation(line: 365, column: 14, scope: !534)
!603 = !DILocation(line: 366, column: 12, scope: !534)
!604 = !DILocation(line: 366, column: 19, scope: !534)
!605 = !DILocation(line: 366, column: 17, scope: !534)
!606 = !DILocation(line: 366, column: 9, scope: !534)
!607 = !DILocation(line: 368, column: 20, scope: !534)
!608 = !DILocation(line: 368, column: 5, scope: !534)
!609 = !DILocation(line: 368, column: 30, scope: !534)
!610 = !DILocation(line: 370, column: 16, scope: !611)
!611 = distinct !DILexicalBlock(scope: !534, file: !93, line: 370, column: 9)
!612 = !DILocation(line: 370, column: 25, scope: !611)
!613 = !DILocation(line: 370, column: 10, scope: !611)
!614 = !DILocation(line: 370, column: 9, scope: !534)
!615 = !DILocation(line: 371, column: 14, scope: !611)
!616 = !DILocation(line: 371, column: 23, scope: !611)
!617 = !DILocation(line: 371, column: 33, scope: !611)
!618 = !DILocation(line: 371, column: 8, scope: !611)
!619 = !DILocation(line: 373, column: 16, scope: !620)
!620 = distinct !DILexicalBlock(scope: !534, file: !93, line: 373, column: 9)
!621 = !DILocation(line: 373, column: 25, scope: !620)
!622 = !DILocation(line: 373, column: 10, scope: !620)
!623 = !DILocation(line: 373, column: 9, scope: !534)
!624 = !DILocation(line: 374, column: 14, scope: !620)
!625 = !DILocation(line: 374, column: 23, scope: !620)
!626 = !DILocation(line: 374, column: 32, scope: !620)
!627 = !DILocation(line: 374, column: 8, scope: !620)
!628 = !DILocation(line: 376, column: 20, scope: !534)
!629 = !DILocation(line: 376, column: 5, scope: !534)
!630 = !DILocation(line: 377, column: 20, scope: !534)
!631 = !DILocation(line: 377, column: 5, scope: !534)
!632 = !DILocation(line: 379, column: 11, scope: !534)
!633 = !DILocation(line: 379, column: 20, scope: !534)
!634 = !DILocation(line: 380, column: 11, scope: !534)
!635 = !DILocation(line: 380, column: 21, scope: !534)
!636 = !DILocation(line: 382, column: 16, scope: !637)
!637 = distinct !DILexicalBlock(scope: !534, file: !93, line: 382, column: 5)
!638 = !DILocation(line: 382, column: 27, scope: !637)
!639 = !DILocation(line: 382, column: 10, scope: !637)
!640 = !DILocation(line: 382, column: 38, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !93, line: 382, column: 5)
!642 = !DILocation(line: 382, column: 49, scope: !641)
!643 = !DILocation(line: 382, column: 5, scope: !637)
!644 = !DILocalVariable(name: "uchar", scope: !645, file: !93, line: 384, type: !646)
!645 = distinct !DILexicalBlock(scope: !641, file: !93, line: 383, column: 5)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_uchar", file: !93, line: 45, baseType: !7)
!647 = !DILocation(line: 384, column: 19, scope: !645)
!648 = !DILocalVariable(name: "uc_b1", scope: !645, file: !93, line: 385, type: !33)
!649 = !DILocation(line: 385, column: 22, scope: !645)
!650 = !DILocalVariable(name: "uc_b2", scope: !645, file: !93, line: 385, type: !33)
!651 = !DILocation(line: 385, column: 29, scope: !645)
!652 = !DILocalVariable(name: "uc_b3", scope: !645, file: !93, line: 385, type: !33)
!653 = !DILocation(line: 385, column: 36, scope: !645)
!654 = !DILocalVariable(name: "uc_b4", scope: !645, file: !93, line: 385, type: !33)
!655 = !DILocation(line: 385, column: 43, scope: !645)
!656 = !DILocalVariable(name: "string", scope: !645, file: !93, line: 386, type: !36)
!657 = !DILocation(line: 386, column: 20, scope: !645)
!658 = !DILocalVariable(name: "string_length", scope: !645, file: !93, line: 387, type: !7)
!659 = !DILocation(line: 387, column: 21, scope: !645)
!660 = !DILocation(line: 389, column: 19, scope: !645)
!661 = !DILocation(line: 389, column: 12, scope: !645)
!662 = !DILocation(line: 390, column: 14, scope: !645)
!663 = !DILocation(line: 392, column: 14, scope: !645)
!664 = !DILocation(line: 392, column: 23, scope: !645)
!665 = !DILocation(line: 394, column: 25, scope: !666)
!666 = distinct !DILexicalBlock(scope: !645, file: !93, line: 394, column: 8)
!667 = !DILocation(line: 394, column: 19, scope: !666)
!668 = !DILocation(line: 394, column: 23, scope: !666)
!669 = !DILocation(line: 394, column: 13, scope: !666)
!670 = !DILocalVariable(name: "b", scope: !671, file: !93, line: 396, type: !34)
!671 = distinct !DILexicalBlock(scope: !672, file: !93, line: 395, column: 8)
!672 = distinct !DILexicalBlock(scope: !666, file: !93, line: 394, column: 8)
!673 = !DILocation(line: 396, column: 21, scope: !671)
!674 = !DILocation(line: 396, column: 32, scope: !671)
!675 = !DILocation(line: 396, column: 39, scope: !671)
!676 = !DILocation(line: 396, column: 36, scope: !671)
!677 = !DILocation(line: 396, column: 26, scope: !671)
!678 = !DILocation(line: 396, column: 56, scope: !671)
!679 = !DILocation(line: 396, column: 49, scope: !671)
!680 = !DILocation(line: 396, column: 25, scope: !671)
!681 = !DILocation(line: 398, column: 15, scope: !682)
!682 = distinct !DILexicalBlock(scope: !671, file: !93, line: 398, column: 15)
!683 = !DILocation(line: 398, column: 21, scope: !682)
!684 = !DILocation(line: 398, column: 15, scope: !671)
!685 = !DILocation(line: 400, column: 19, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !93, line: 400, column: 18)
!687 = distinct !DILexicalBlock(scope: !682, file: !93, line: 399, column: 11)
!688 = !DILocation(line: 400, column: 18, scope: !687)
!689 = !DILocation(line: 401, column: 26, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !93, line: 401, column: 14)
!691 = !DILocation(line: 401, column: 72, scope: !690)
!692 = !DILocation(line: 401, column: 17, scope: !690)
!693 = !DILocation(line: 402, column: 17, scope: !690)
!694 = !DILocation(line: 405, column: 18, scope: !695)
!695 = distinct !DILexicalBlock(scope: !687, file: !93, line: 405, column: 18)
!696 = !DILocation(line: 405, column: 40, scope: !695)
!697 = !DILocation(line: 405, column: 32, scope: !695)
!698 = !DILocation(line: 405, column: 18, scope: !687)
!699 = !DILocation(line: 408, column: 18, scope: !700)
!700 = distinct !DILexicalBlock(scope: !687, file: !93, line: 408, column: 18)
!701 = !DILocation(line: 408, column: 24, scope: !700)
!702 = !DILocation(line: 408, column: 18, scope: !687)
!703 = !DILocation(line: 410, column: 23, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !93, line: 409, column: 14)
!705 = !DILocation(line: 412, column: 25, scope: !704)
!706 = !DILocation(line: 412, column: 17, scope: !704)
!707 = !DILocation(line: 414, column: 31, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !93, line: 414, column: 31)
!709 = distinct !DILexicalBlock(scope: !710, file: !93, line: 414, column: 31)
!710 = distinct !DILexicalBlock(scope: !704, file: !93, line: 413, column: 17)
!711 = !DILocation(line: 414, column: 31, scope: !709)
!712 = !DILocation(line: 414, column: 51, scope: !710)
!713 = !DILocation(line: 415, column: 31, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !93, line: 415, column: 31)
!715 = distinct !DILexicalBlock(scope: !710, file: !93, line: 415, column: 31)
!716 = !DILocation(line: 415, column: 31, scope: !715)
!717 = !DILocation(line: 415, column: 51, scope: !710)
!718 = !DILocation(line: 416, column: 31, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !93, line: 416, column: 31)
!720 = distinct !DILexicalBlock(scope: !710, file: !93, line: 416, column: 31)
!721 = !DILocation(line: 416, column: 31, scope: !720)
!722 = !DILocation(line: 416, column: 51, scope: !710)
!723 = !DILocation(line: 417, column: 31, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !93, line: 417, column: 31)
!725 = distinct !DILexicalBlock(scope: !710, file: !93, line: 417, column: 31)
!726 = !DILocation(line: 417, column: 31, scope: !725)
!727 = !DILocation(line: 417, column: 51, scope: !710)
!728 = !DILocation(line: 418, column: 31, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !93, line: 418, column: 31)
!730 = distinct !DILexicalBlock(scope: !710, file: !93, line: 418, column: 31)
!731 = !DILocation(line: 418, column: 31, scope: !730)
!732 = !DILocation(line: 418, column: 51, scope: !710)
!733 = !DILocation(line: 421, column: 26, scope: !734)
!734 = distinct !DILexicalBlock(scope: !710, file: !93, line: 421, column: 26)
!735 = !DILocation(line: 421, column: 38, scope: !734)
!736 = !DILocation(line: 421, column: 30, scope: !734)
!737 = !DILocation(line: 421, column: 42, scope: !734)
!738 = !DILocation(line: 421, column: 46, scope: !734)
!739 = !DILocation(line: 422, column: 56, scope: !734)
!740 = !DILocation(line: 422, column: 47, scope: !734)
!741 = !DILocation(line: 422, column: 46, scope: !734)
!742 = !DILocation(line: 422, column: 35, scope: !734)
!743 = !DILocation(line: 422, column: 33, scope: !734)
!744 = !DILocation(line: 422, column: 26, scope: !734)
!745 = !DILocation(line: 422, column: 62, scope: !734)
!746 = !DILocation(line: 422, column: 70, scope: !734)
!747 = !DILocation(line: 423, column: 56, scope: !734)
!748 = !DILocation(line: 423, column: 47, scope: !734)
!749 = !DILocation(line: 423, column: 46, scope: !734)
!750 = !DILocation(line: 423, column: 35, scope: !734)
!751 = !DILocation(line: 423, column: 33, scope: !734)
!752 = !DILocation(line: 423, column: 26, scope: !734)
!753 = !DILocation(line: 423, column: 62, scope: !734)
!754 = !DILocation(line: 423, column: 70, scope: !734)
!755 = !DILocation(line: 424, column: 56, scope: !734)
!756 = !DILocation(line: 424, column: 47, scope: !734)
!757 = !DILocation(line: 424, column: 46, scope: !734)
!758 = !DILocation(line: 424, column: 35, scope: !734)
!759 = !DILocation(line: 424, column: 33, scope: !734)
!760 = !DILocation(line: 424, column: 26, scope: !734)
!761 = !DILocation(line: 424, column: 62, scope: !734)
!762 = !DILocation(line: 424, column: 70, scope: !734)
!763 = !DILocation(line: 425, column: 56, scope: !734)
!764 = !DILocation(line: 425, column: 47, scope: !734)
!765 = !DILocation(line: 425, column: 46, scope: !734)
!766 = !DILocation(line: 425, column: 35, scope: !734)
!767 = !DILocation(line: 425, column: 33, scope: !734)
!768 = !DILocation(line: 425, column: 26, scope: !734)
!769 = !DILocation(line: 425, column: 62, scope: !734)
!770 = !DILocation(line: 421, column: 26, scope: !710)
!771 = !DILocation(line: 427, column: 35, scope: !772)
!772 = distinct !DILexicalBlock(scope: !734, file: !93, line: 426, column: 22)
!773 = !DILocation(line: 427, column: 85, scope: !772)
!774 = !DILocation(line: 427, column: 88, scope: !772)
!775 = !DILocation(line: 427, column: 26, scope: !772)
!776 = !DILocation(line: 428, column: 26, scope: !772)
!777 = !DILocation(line: 431, column: 31, scope: !710)
!778 = !DILocation(line: 431, column: 37, scope: !710)
!779 = !DILocation(line: 431, column: 45, scope: !710)
!780 = !DILocation(line: 431, column: 43, scope: !710)
!781 = !DILocation(line: 431, column: 30, scope: !710)
!782 = !DILocation(line: 431, column: 28, scope: !710)
!783 = !DILocation(line: 432, column: 31, scope: !710)
!784 = !DILocation(line: 432, column: 37, scope: !710)
!785 = !DILocation(line: 432, column: 45, scope: !710)
!786 = !DILocation(line: 432, column: 43, scope: !710)
!787 = !DILocation(line: 432, column: 30, scope: !710)
!788 = !DILocation(line: 432, column: 28, scope: !710)
!789 = !DILocation(line: 433, column: 31, scope: !710)
!790 = !DILocation(line: 433, column: 37, scope: !710)
!791 = !DILocation(line: 433, column: 45, scope: !710)
!792 = !DILocation(line: 433, column: 43, scope: !710)
!793 = !DILocation(line: 433, column: 28, scope: !710)
!794 = !DILocation(line: 435, column: 27, scope: !795)
!795 = distinct !DILexicalBlock(scope: !710, file: !93, line: 435, column: 26)
!796 = !DILocation(line: 435, column: 33, scope: !795)
!797 = !DILocation(line: 435, column: 43, scope: !795)
!798 = !DILocation(line: 435, column: 26, scope: !710)
!799 = !DILocalVariable(name: "uchar2", scope: !800, file: !93, line: 436, type: !646)
!800 = distinct !DILexicalBlock(scope: !795, file: !93, line: 435, column: 54)
!801 = !DILocation(line: 436, column: 37, scope: !800)
!802 = !DILocation(line: 438, column: 30, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !93, line: 438, column: 30)
!804 = !DILocation(line: 438, column: 42, scope: !803)
!805 = !DILocation(line: 438, column: 34, scope: !803)
!806 = !DILocation(line: 438, column: 46, scope: !803)
!807 = !DILocation(line: 438, column: 50, scope: !803)
!808 = !DILocation(line: 438, column: 64, scope: !803)
!809 = !DILocation(line: 438, column: 55, scope: !803)
!810 = !DILocation(line: 438, column: 54, scope: !803)
!811 = !DILocation(line: 438, column: 53, scope: !803)
!812 = !DILocation(line: 438, column: 69, scope: !803)
!813 = !DILocation(line: 438, column: 77, scope: !803)
!814 = !DILocation(line: 438, column: 91, scope: !803)
!815 = !DILocation(line: 438, column: 82, scope: !803)
!816 = !DILocation(line: 438, column: 81, scope: !803)
!817 = !DILocation(line: 438, column: 80, scope: !803)
!818 = !DILocation(line: 438, column: 96, scope: !803)
!819 = !DILocation(line: 438, column: 103, scope: !803)
!820 = !DILocation(line: 439, column: 60, scope: !803)
!821 = !DILocation(line: 439, column: 51, scope: !803)
!822 = !DILocation(line: 439, column: 50, scope: !803)
!823 = !DILocation(line: 439, column: 39, scope: !803)
!824 = !DILocation(line: 439, column: 37, scope: !803)
!825 = !DILocation(line: 439, column: 30, scope: !803)
!826 = !DILocation(line: 439, column: 66, scope: !803)
!827 = !DILocation(line: 439, column: 74, scope: !803)
!828 = !DILocation(line: 440, column: 60, scope: !803)
!829 = !DILocation(line: 440, column: 51, scope: !803)
!830 = !DILocation(line: 440, column: 50, scope: !803)
!831 = !DILocation(line: 440, column: 39, scope: !803)
!832 = !DILocation(line: 440, column: 37, scope: !803)
!833 = !DILocation(line: 440, column: 30, scope: !803)
!834 = !DILocation(line: 440, column: 66, scope: !803)
!835 = !DILocation(line: 440, column: 74, scope: !803)
!836 = !DILocation(line: 441, column: 60, scope: !803)
!837 = !DILocation(line: 441, column: 51, scope: !803)
!838 = !DILocation(line: 441, column: 50, scope: !803)
!839 = !DILocation(line: 441, column: 39, scope: !803)
!840 = !DILocation(line: 441, column: 37, scope: !803)
!841 = !DILocation(line: 441, column: 30, scope: !803)
!842 = !DILocation(line: 441, column: 66, scope: !803)
!843 = !DILocation(line: 441, column: 74, scope: !803)
!844 = !DILocation(line: 442, column: 60, scope: !803)
!845 = !DILocation(line: 442, column: 51, scope: !803)
!846 = !DILocation(line: 442, column: 50, scope: !803)
!847 = !DILocation(line: 442, column: 39, scope: !803)
!848 = !DILocation(line: 442, column: 37, scope: !803)
!849 = !DILocation(line: 442, column: 30, scope: !803)
!850 = !DILocation(line: 442, column: 66, scope: !803)
!851 = !DILocation(line: 438, column: 30, scope: !800)
!852 = !DILocation(line: 444, column: 39, scope: !853)
!853 = distinct !DILexicalBlock(scope: !803, file: !93, line: 443, column: 26)
!854 = !DILocation(line: 444, column: 89, scope: !853)
!855 = !DILocation(line: 444, column: 92, scope: !853)
!856 = !DILocation(line: 444, column: 30, scope: !853)
!857 = !DILocation(line: 445, column: 30, scope: !853)
!858 = !DILocation(line: 448, column: 35, scope: !800)
!859 = !DILocation(line: 448, column: 41, scope: !800)
!860 = !DILocation(line: 448, column: 49, scope: !800)
!861 = !DILocation(line: 448, column: 47, scope: !800)
!862 = !DILocation(line: 448, column: 34, scope: !800)
!863 = !DILocation(line: 448, column: 32, scope: !800)
!864 = !DILocation(line: 449, column: 35, scope: !800)
!865 = !DILocation(line: 449, column: 41, scope: !800)
!866 = !DILocation(line: 449, column: 49, scope: !800)
!867 = !DILocation(line: 449, column: 47, scope: !800)
!868 = !DILocation(line: 449, column: 34, scope: !800)
!869 = !DILocation(line: 449, column: 32, scope: !800)
!870 = !DILocation(line: 450, column: 36, scope: !800)
!871 = !DILocation(line: 450, column: 42, scope: !800)
!872 = !DILocation(line: 450, column: 50, scope: !800)
!873 = !DILocation(line: 450, column: 48, scope: !800)
!874 = !DILocation(line: 450, column: 33, scope: !800)
!875 = !DILocation(line: 452, column: 47, scope: !800)
!876 = !DILocation(line: 452, column: 53, scope: !800)
!877 = !DILocation(line: 452, column: 62, scope: !800)
!878 = !DILocation(line: 452, column: 43, scope: !800)
!879 = !DILocation(line: 452, column: 72, scope: !800)
!880 = !DILocation(line: 452, column: 79, scope: !800)
!881 = !DILocation(line: 452, column: 69, scope: !800)
!882 = !DILocation(line: 452, column: 32, scope: !800)
!883 = !DILocation(line: 453, column: 22, scope: !800)
!884 = !DILocation(line: 455, column: 72, scope: !885)
!885 = distinct !DILexicalBlock(scope: !710, file: !93, line: 455, column: 26)
!886 = !DILocation(line: 455, column: 78, scope: !885)
!887 = !DILocation(line: 455, column: 26, scope: !710)
!888 = !DILocation(line: 457, column: 25, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !93, line: 457, column: 25)
!890 = distinct !DILexicalBlock(scope: !891, file: !93, line: 457, column: 25)
!891 = distinct !DILexicalBlock(scope: !885, file: !93, line: 456, column: 22)
!892 = !DILocation(line: 457, column: 25, scope: !890)
!893 = !DILocation(line: 458, column: 25, scope: !891)
!894 = !DILocation(line: 461, column: 26, scope: !895)
!895 = distinct !DILexicalBlock(scope: !710, file: !93, line: 461, column: 26)
!896 = !DILocation(line: 461, column: 32, scope: !895)
!897 = !DILocation(line: 461, column: 26, scope: !710)
!898 = !DILocation(line: 463, column: 36, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !93, line: 463, column: 30)
!900 = distinct !DILexicalBlock(scope: !895, file: !93, line: 462, column: 22)
!901 = !DILocation(line: 463, column: 30, scope: !899)
!902 = !DILocation(line: 463, column: 30, scope: !900)
!903 = !DILocation(line: 464, column: 43, scope: !899)
!904 = !DILocation(line: 464, column: 29, scope: !899)
!905 = !DILocation(line: 466, column: 65, scope: !906)
!906 = distinct !DILexicalBlock(scope: !899, file: !93, line: 466, column: 26)
!907 = !DILocation(line: 466, column: 71, scope: !906)
!908 = !DILocation(line: 466, column: 62, scope: !906)
!909 = !DILocation(line: 466, column: 57, scope: !906)
!910 = !DILocation(line: 466, column: 29, scope: !906)
!911 = !DILocation(line: 466, column: 51, scope: !906)
!912 = !DILocation(line: 466, column: 55, scope: !906)
!913 = !DILocation(line: 467, column: 65, scope: !906)
!914 = !DILocation(line: 467, column: 71, scope: !906)
!915 = !DILocation(line: 467, column: 62, scope: !906)
!916 = !DILocation(line: 467, column: 57, scope: !906)
!917 = !DILocation(line: 467, column: 29, scope: !906)
!918 = !DILocation(line: 467, column: 51, scope: !906)
!919 = !DILocation(line: 467, column: 55, scope: !906)
!920 = !DILocation(line: 473, column: 26, scope: !921)
!921 = distinct !DILexicalBlock(scope: !710, file: !93, line: 473, column: 26)
!922 = !DILocation(line: 473, column: 32, scope: !921)
!923 = !DILocation(line: 473, column: 26, scope: !710)
!924 = !DILocation(line: 474, column: 36, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !93, line: 474, column: 30)
!926 = distinct !DILexicalBlock(scope: !921, file: !93, line: 473, column: 43)
!927 = !DILocation(line: 474, column: 30, scope: !925)
!928 = !DILocation(line: 474, column: 30, scope: !926)
!929 = !DILocation(line: 475, column: 43, scope: !925)
!930 = !DILocation(line: 475, column: 29, scope: !925)
!931 = !DILocation(line: 477, column: 65, scope: !932)
!932 = distinct !DILexicalBlock(scope: !925, file: !93, line: 477, column: 26)
!933 = !DILocation(line: 477, column: 71, scope: !932)
!934 = !DILocation(line: 477, column: 62, scope: !932)
!935 = !DILocation(line: 477, column: 57, scope: !932)
!936 = !DILocation(line: 477, column: 29, scope: !932)
!937 = !DILocation(line: 477, column: 51, scope: !932)
!938 = !DILocation(line: 477, column: 55, scope: !932)
!939 = !DILocation(line: 478, column: 66, scope: !932)
!940 = !DILocation(line: 478, column: 72, scope: !932)
!941 = !DILocation(line: 478, column: 78, scope: !932)
!942 = !DILocation(line: 478, column: 62, scope: !932)
!943 = !DILocation(line: 478, column: 57, scope: !932)
!944 = !DILocation(line: 478, column: 29, scope: !932)
!945 = !DILocation(line: 478, column: 51, scope: !932)
!946 = !DILocation(line: 478, column: 55, scope: !932)
!947 = !DILocation(line: 479, column: 65, scope: !932)
!948 = !DILocation(line: 479, column: 71, scope: !932)
!949 = !DILocation(line: 479, column: 62, scope: !932)
!950 = !DILocation(line: 479, column: 57, scope: !932)
!951 = !DILocation(line: 479, column: 29, scope: !932)
!952 = !DILocation(line: 479, column: 51, scope: !932)
!953 = !DILocation(line: 479, column: 55, scope: !932)
!954 = !DILocation(line: 485, column: 32, scope: !955)
!955 = distinct !DILexicalBlock(scope: !710, file: !93, line: 485, column: 26)
!956 = !DILocation(line: 485, column: 26, scope: !955)
!957 = !DILocation(line: 485, column: 26, scope: !710)
!958 = !DILocation(line: 486, column: 39, scope: !955)
!959 = !DILocation(line: 486, column: 25, scope: !955)
!960 = !DILocation(line: 488, column: 61, scope: !961)
!961 = distinct !DILexicalBlock(scope: !955, file: !93, line: 488, column: 22)
!962 = !DILocation(line: 488, column: 67, scope: !961)
!963 = !DILocation(line: 488, column: 58, scope: !961)
!964 = !DILocation(line: 488, column: 53, scope: !961)
!965 = !DILocation(line: 488, column: 25, scope: !961)
!966 = !DILocation(line: 488, column: 47, scope: !961)
!967 = !DILocation(line: 488, column: 51, scope: !961)
!968 = !DILocation(line: 489, column: 62, scope: !961)
!969 = !DILocation(line: 489, column: 68, scope: !961)
!970 = !DILocation(line: 489, column: 75, scope: !961)
!971 = !DILocation(line: 489, column: 58, scope: !961)
!972 = !DILocation(line: 489, column: 53, scope: !961)
!973 = !DILocation(line: 489, column: 25, scope: !961)
!974 = !DILocation(line: 489, column: 47, scope: !961)
!975 = !DILocation(line: 489, column: 51, scope: !961)
!976 = !DILocation(line: 490, column: 62, scope: !961)
!977 = !DILocation(line: 490, column: 68, scope: !961)
!978 = !DILocation(line: 490, column: 74, scope: !961)
!979 = !DILocation(line: 490, column: 58, scope: !961)
!980 = !DILocation(line: 490, column: 53, scope: !961)
!981 = !DILocation(line: 490, column: 25, scope: !961)
!982 = !DILocation(line: 490, column: 47, scope: !961)
!983 = !DILocation(line: 490, column: 51, scope: !961)
!984 = !DILocation(line: 491, column: 61, scope: !961)
!985 = !DILocation(line: 491, column: 67, scope: !961)
!986 = !DILocation(line: 491, column: 58, scope: !961)
!987 = !DILocation(line: 491, column: 53, scope: !961)
!988 = !DILocation(line: 491, column: 25, scope: !961)
!989 = !DILocation(line: 491, column: 47, scope: !961)
!990 = !DILocation(line: 491, column: 51, scope: !961)
!991 = !DILocation(line: 497, column: 23, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !93, line: 497, column: 23)
!993 = distinct !DILexicalBlock(scope: !710, file: !93, line: 497, column: 23)
!994 = !DILocation(line: 497, column: 23, scope: !993)
!995 = !DILocation(line: 498, column: 17, scope: !710)
!996 = !DILocation(line: 503, column: 18, scope: !997)
!997 = distinct !DILexicalBlock(scope: !687, file: !93, line: 503, column: 18)
!998 = !DILocation(line: 503, column: 20, scope: !997)
!999 = !DILocation(line: 503, column: 18, scope: !687)
!1000 = !DILocation(line: 505, column: 23, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !93, line: 504, column: 14)
!1002 = !DILocation(line: 506, column: 17, scope: !1001)
!1003 = !DILocation(line: 509, column: 18, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !687, file: !93, line: 509, column: 18)
!1005 = !DILocation(line: 509, column: 20, scope: !1004)
!1006 = !DILocation(line: 509, column: 18, scope: !687)
!1007 = !DILocation(line: 511, column: 28, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !93, line: 511, column: 21)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !93, line: 510, column: 14)
!1010 = !DILocation(line: 511, column: 22, scope: !1008)
!1011 = !DILocation(line: 511, column: 21, scope: !1009)
!1012 = !DILocation(line: 512, column: 20, scope: !1008)
!1013 = !DILocation(line: 512, column: 28, scope: !1008)
!1014 = !DILocation(line: 512, column: 43, scope: !1008)
!1015 = !DILocation(line: 514, column: 23, scope: !1009)
!1016 = !DILocation(line: 515, column: 24, scope: !1009)
!1017 = !DILocation(line: 517, column: 25, scope: !1009)
!1018 = !DILocation(line: 517, column: 30, scope: !1009)
!1019 = !DILocation(line: 517, column: 17, scope: !1009)
!1020 = !DILocation(line: 521, column: 46, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1009, file: !93, line: 518, column: 17)
!1022 = !DILocation(line: 521, column: 23, scope: !1021)
!1023 = !DILocation(line: 521, column: 28, scope: !1021)
!1024 = !DILocation(line: 521, column: 30, scope: !1021)
!1025 = !DILocation(line: 521, column: 37, scope: !1021)
!1026 = !DILocation(line: 521, column: 44, scope: !1021)
!1027 = !DILocation(line: 522, column: 29, scope: !1021)
!1028 = !DILocation(line: 524, column: 23, scope: !1021)
!1029 = !DILocation(line: 528, column: 33, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1021, file: !93, line: 528, column: 27)
!1031 = !DILocation(line: 528, column: 27, scope: !1030)
!1032 = !DILocation(line: 528, column: 27, scope: !1021)
!1033 = !DILocation(line: 529, column: 69, scope: !1030)
!1034 = !DILocation(line: 529, column: 83, scope: !1030)
!1035 = !DILocation(line: 529, column: 44, scope: !1030)
!1036 = !DILocation(line: 529, column: 49, scope: !1030)
!1037 = !DILocation(line: 529, column: 51, scope: !1030)
!1038 = !DILocation(line: 529, column: 58, scope: !1030)
!1039 = !DILocation(line: 529, column: 27, scope: !1030)
!1040 = !DILocation(line: 529, column: 66, scope: !1030)
!1041 = !DILocation(line: 529, column: 26, scope: !1030)
!1042 = !DILocation(line: 533, column: 45, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1030, file: !93, line: 531, column: 23)
!1044 = !DILocation(line: 533, column: 50, scope: !1043)
!1045 = !DILocation(line: 533, column: 60, scope: !1043)
!1046 = !DILocation(line: 532, column: 26, scope: !1043)
!1047 = !DILocation(line: 532, column: 31, scope: !1043)
!1048 = !DILocation(line: 532, column: 33, scope: !1043)
!1049 = !DILocation(line: 532, column: 40, scope: !1043)
!1050 = !DILocation(line: 532, column: 48, scope: !1043)
!1051 = !DILocation(line: 532, column: 53, scope: !1043)
!1052 = !DILocation(line: 532, column: 55, scope: !1043)
!1053 = !DILocation(line: 532, column: 62, scope: !1043)
!1054 = !DILocation(line: 532, column: 70, scope: !1043)
!1055 = !DILocation(line: 533, column: 29, scope: !1043)
!1056 = !DILocation(line: 536, column: 31, scope: !1043)
!1057 = !DILocation(line: 535, column: 26, scope: !1043)
!1058 = !DILocation(line: 535, column: 31, scope: !1043)
!1059 = !DILocation(line: 535, column: 33, scope: !1043)
!1060 = !DILocation(line: 535, column: 40, scope: !1043)
!1061 = !DILocation(line: 535, column: 48, scope: !1043)
!1062 = !DILocation(line: 535, column: 53, scope: !1043)
!1063 = !DILocation(line: 535, column: 55, scope: !1043)
!1064 = !DILocation(line: 535, column: 62, scope: !1043)
!1065 = !DILocation(line: 535, column: 70, scope: !1043)
!1066 = !DILocation(line: 536, column: 29, scope: !1043)
!1067 = !DILocation(line: 538, column: 74, scope: !1043)
!1068 = !DILocation(line: 538, column: 88, scope: !1043)
!1069 = !DILocation(line: 538, column: 44, scope: !1043)
!1070 = !DILocation(line: 538, column: 49, scope: !1043)
!1071 = !DILocation(line: 538, column: 59, scope: !1043)
!1072 = !DILocation(line: 538, column: 71, scope: !1043)
!1073 = !DILocation(line: 541, column: 29, scope: !1021)
!1074 = !DILocation(line: 542, column: 23, scope: !1021)
!1075 = !DILocation(line: 550, column: 17, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !93, line: 550, column: 17)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !93, line: 550, column: 17)
!1078 = distinct !DILexicalBlock(scope: !1004, file: !93, line: 549, column: 14)
!1079 = !DILocation(line: 550, column: 17, scope: !1077)
!1080 = !DILocation(line: 551, column: 17, scope: !1078)
!1081 = !DILocation(line: 555, column: 21, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !671, file: !93, line: 555, column: 15)
!1083 = !DILocation(line: 555, column: 30, scope: !1082)
!1084 = !DILocation(line: 555, column: 39, scope: !1082)
!1085 = !DILocation(line: 555, column: 15, scope: !671)
!1086 = !DILocation(line: 557, column: 18, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !93, line: 557, column: 18)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !93, line: 556, column: 11)
!1089 = !DILocation(line: 557, column: 24, scope: !1087)
!1090 = !DILocation(line: 557, column: 18, scope: !1088)
!1091 = !DILocation(line: 559, column: 21, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !93, line: 559, column: 21)
!1093 = distinct !DILexicalBlock(scope: !1087, file: !93, line: 558, column: 14)
!1094 = !DILocation(line: 559, column: 27, scope: !1092)
!1095 = !DILocation(line: 559, column: 21, scope: !1093)
!1096 = !DILocation(line: 561, column: 24, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !93, line: 561, column: 24)
!1098 = distinct !DILexicalBlock(scope: !1092, file: !93, line: 560, column: 17)
!1099 = !DILocation(line: 561, column: 26, scope: !1097)
!1100 = !DILocation(line: 561, column: 34, scope: !1097)
!1101 = !DILocation(line: 561, column: 37, scope: !1097)
!1102 = !DILocation(line: 561, column: 39, scope: !1097)
!1103 = !DILocation(line: 561, column: 47, scope: !1097)
!1104 = !DILocation(line: 563, column: 29, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1097, file: !93, line: 562, column: 20)
!1106 = !DILocation(line: 564, column: 32, scope: !1105)
!1107 = !DILocation(line: 564, column: 23, scope: !1105)
!1108 = !DILocation(line: 565, column: 20, scope: !1105)
!1109 = !DILocation(line: 570, column: 21, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1093, file: !93, line: 570, column: 21)
!1111 = !DILocation(line: 570, column: 27, scope: !1110)
!1112 = !DILocation(line: 570, column: 21, scope: !1093)
!1113 = !DILocation(line: 572, column: 25, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !93, line: 572, column: 24)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !93, line: 571, column: 17)
!1116 = !DILocation(line: 572, column: 24, scope: !1115)
!1117 = !DILocation(line: 573, column: 32, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !93, line: 573, column: 20)
!1119 = !DILocation(line: 573, column: 81, scope: !1118)
!1120 = !DILocation(line: 573, column: 23, scope: !1118)
!1121 = !DILocation(line: 574, column: 23, scope: !1118)
!1122 = !DILocation(line: 577, column: 24, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1115, file: !93, line: 577, column: 24)
!1124 = !DILocation(line: 577, column: 26, scope: !1123)
!1125 = !DILocation(line: 577, column: 33, scope: !1123)
!1126 = !DILocation(line: 577, column: 42, scope: !1123)
!1127 = !DILocation(line: 577, column: 49, scope: !1123)
!1128 = !DILocation(line: 577, column: 53, scope: !1123)
!1129 = !DILocation(line: 577, column: 46, scope: !1123)
!1130 = !DILocation(line: 577, column: 58, scope: !1123)
!1131 = !DILocation(line: 577, column: 67, scope: !1123)
!1132 = !DILocation(line: 577, column: 61, scope: !1123)
!1133 = !DILocation(line: 577, column: 75, scope: !1123)
!1134 = !DILocation(line: 577, column: 24, scope: !1115)
!1135 = !DILocation(line: 579, column: 29, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1123, file: !93, line: 578, column: 20)
!1137 = !DILocation(line: 580, column: 32, scope: !1136)
!1138 = !DILocation(line: 580, column: 23, scope: !1136)
!1139 = !DILocation(line: 581, column: 20, scope: !1136)
!1140 = !DILocation(line: 586, column: 23, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1087, file: !93, line: 586, column: 23)
!1142 = !DILocation(line: 586, column: 25, scope: !1141)
!1143 = !DILocation(line: 586, column: 23, scope: !1087)
!1144 = !DILocation(line: 588, column: 24, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !93, line: 588, column: 21)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !93, line: 587, column: 14)
!1147 = !DILocation(line: 588, column: 30, scope: !1145)
!1148 = !DILocation(line: 588, column: 63, scope: !1145)
!1149 = !DILocation(line: 588, column: 66, scope: !1145)
!1150 = !DILocation(line: 588, column: 71, scope: !1145)
!1151 = !DILocation(line: 588, column: 76, scope: !1145)
!1152 = !DILocation(line: 588, column: 21, scope: !1146)
!1153 = !DILocation(line: 589, column: 29, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1145, file: !93, line: 589, column: 17)
!1155 = !DILocation(line: 589, column: 71, scope: !1154)
!1156 = !DILocation(line: 589, column: 20, scope: !1154)
!1157 = !DILocation(line: 590, column: 20, scope: !1154)
!1158 = !DILocation(line: 593, column: 30, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1146, file: !93, line: 593, column: 21)
!1160 = !DILocation(line: 593, column: 21, scope: !1159)
!1161 = !DILocation(line: 593, column: 37, scope: !1159)
!1162 = !DILocation(line: 593, column: 34, scope: !1159)
!1163 = !DILocation(line: 593, column: 21, scope: !1146)
!1164 = !DILocation(line: 594, column: 29, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1159, file: !93, line: 594, column: 17)
!1166 = !DILocation(line: 594, column: 61, scope: !1165)
!1167 = !DILocation(line: 594, column: 20, scope: !1165)
!1168 = !DILocation(line: 595, column: 20, scope: !1165)
!1169 = !DILocation(line: 598, column: 36, scope: !1146)
!1170 = !DILocation(line: 598, column: 29, scope: !1146)
!1171 = !DILocation(line: 598, column: 27, scope: !1146)
!1172 = !DILocation(line: 598, column: 25, scope: !1146)
!1173 = !DILocation(line: 598, column: 17, scope: !1146)
!1174 = !DILocation(line: 601, column: 29, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1146, file: !93, line: 599, column: 17)
!1176 = !DILocation(line: 602, column: 23, scope: !1175)
!1177 = !DILocation(line: 605, column: 29, scope: !1175)
!1178 = !DILocation(line: 606, column: 23, scope: !1175)
!1179 = !DILocation(line: 609, column: 32, scope: !1175)
!1180 = !DILocation(line: 609, column: 93, scope: !1175)
!1181 = !DILocation(line: 609, column: 107, scope: !1175)
!1182 = !DILocation(line: 609, column: 23, scope: !1175)
!1183 = !DILocation(line: 610, column: 23, scope: !1175)
!1184 = !DILocation(line: 615, column: 15, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !671, file: !93, line: 615, column: 15)
!1186 = !DILocation(line: 615, column: 21, scope: !1185)
!1187 = !DILocation(line: 615, column: 15, scope: !671)
!1188 = !DILocation(line: 617, column: 19, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !93, line: 617, column: 18)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !93, line: 616, column: 11)
!1191 = !DILocation(line: 617, column: 18, scope: !1190)
!1192 = !DILocation(line: 620, column: 22, scope: !1190)
!1193 = !DILocation(line: 620, column: 14, scope: !1190)
!1194 = !DILocation(line: 622, column: 17, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !93, line: 621, column: 14)
!1196 = !DILocation(line: 627, column: 29, scope: !1195)
!1197 = !DILocation(line: 628, column: 35, scope: !1195)
!1198 = !DILocation(line: 628, column: 51, scope: !1195)
!1199 = !DILocation(line: 628, column: 60, scope: !1195)
!1200 = !DILocation(line: 627, column: 20, scope: !1195)
!1201 = !DILocation(line: 630, column: 20, scope: !1195)
!1202 = !DILocation(line: 634, column: 15, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !671, file: !93, line: 634, column: 15)
!1204 = !DILocation(line: 634, column: 21, scope: !1203)
!1205 = !DILocation(line: 634, column: 15, scope: !671)
!1206 = !DILocation(line: 636, column: 22, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !93, line: 635, column: 11)
!1208 = !DILocation(line: 636, column: 14, scope: !1207)
!1209 = !DILocation(line: 638, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !93, line: 637, column: 14)
!1211 = !DILocation(line: 643, column: 24, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1210, file: !93, line: 643, column: 24)
!1213 = !DILocation(line: 643, column: 28, scope: !1212)
!1214 = !DILocation(line: 643, column: 31, scope: !1212)
!1215 = !DILocation(line: 643, column: 36, scope: !1212)
!1216 = !DILocation(line: 643, column: 41, scope: !1212)
!1217 = !DILocation(line: 643, column: 24, scope: !1210)
!1218 = !DILocation(line: 644, column: 32, scope: !1212)
!1219 = !DILocation(line: 644, column: 38, scope: !1212)
!1220 = !DILocation(line: 644, column: 79, scope: !1212)
!1221 = !DILocation(line: 644, column: 29, scope: !1212)
!1222 = !DILocation(line: 650, column: 20, scope: !1210)
!1223 = !DILocation(line: 646, column: 32, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1212, file: !93, line: 646, column: 20)
!1225 = !DILocation(line: 646, column: 62, scope: !1224)
!1226 = !DILocation(line: 646, column: 23, scope: !1224)
!1227 = !DILocation(line: 647, column: 23, scope: !1224)
!1228 = !DILocation(line: 654, column: 24, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1210, file: !93, line: 654, column: 24)
!1230 = !DILocation(line: 654, column: 30, scope: !1229)
!1231 = !DILocation(line: 654, column: 24, scope: !1210)
!1232 = !DILocation(line: 656, column: 27, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !93, line: 656, column: 27)
!1234 = distinct !DILexicalBlock(scope: !1229, file: !93, line: 655, column: 20)
!1235 = !DILocation(line: 656, column: 29, scope: !1233)
!1236 = !DILocation(line: 656, column: 27, scope: !1234)
!1237 = !DILocation(line: 657, column: 32, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !93, line: 657, column: 23)
!1239 = !DILocation(line: 658, column: 26, scope: !1238)
!1240 = !DILocation(line: 662, column: 35, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1233, file: !93, line: 661, column: 23)
!1242 = !DILocation(line: 663, column: 41, scope: !1241)
!1243 = !DILocation(line: 663, column: 57, scope: !1241)
!1244 = !DILocation(line: 663, column: 66, scope: !1241)
!1245 = !DILocation(line: 662, column: 26, scope: !1241)
!1246 = !DILocation(line: 665, column: 26, scope: !1241)
!1247 = !DILocation(line: 669, column: 24, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1210, file: !93, line: 669, column: 24)
!1249 = !DILocation(line: 669, column: 30, scope: !1248)
!1250 = !DILocation(line: 669, column: 24, scope: !1210)
!1251 = !DILocation(line: 671, column: 27, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !93, line: 671, column: 27)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !93, line: 670, column: 20)
!1254 = !DILocation(line: 671, column: 29, scope: !1252)
!1255 = !DILocation(line: 671, column: 27, scope: !1253)
!1256 = !DILocation(line: 672, column: 32, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1252, file: !93, line: 672, column: 23)
!1258 = !DILocation(line: 673, column: 26, scope: !1257)
!1259 = !DILocation(line: 677, column: 35, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1252, file: !93, line: 676, column: 23)
!1261 = !DILocation(line: 678, column: 41, scope: !1260)
!1262 = !DILocation(line: 678, column: 57, scope: !1260)
!1263 = !DILocation(line: 678, column: 66, scope: !1260)
!1264 = !DILocation(line: 677, column: 26, scope: !1260)
!1265 = !DILocation(line: 680, column: 26, scope: !1260)
!1266 = !DILocation(line: 684, column: 26, scope: !1210)
!1267 = !DILocation(line: 686, column: 28, scope: !1210)
!1268 = !DILocation(line: 686, column: 20, scope: !1210)
!1269 = !DILocation(line: 690, column: 31, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 690, column: 30)
!1271 = distinct !DILexicalBlock(scope: !1210, file: !93, line: 687, column: 20)
!1272 = !DILocation(line: 690, column: 30, scope: !1271)
!1273 = !DILocation(line: 697, column: 31, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 697, column: 30)
!1275 = !DILocation(line: 697, column: 30, scope: !1271)
!1276 = !DILocation(line: 700, column: 32, scope: !1271)
!1277 = !DILocation(line: 701, column: 26, scope: !1271)
!1278 = !DILocation(line: 705, column: 31, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 705, column: 30)
!1280 = !DILocation(line: 705, column: 30, scope: !1271)
!1281 = !DILocation(line: 708, column: 32, scope: !1271)
!1282 = !DILocation(line: 710, column: 35, scope: !1271)
!1283 = !DILocation(line: 710, column: 40, scope: !1271)
!1284 = !DILocation(line: 710, column: 42, scope: !1271)
!1285 = !DILocation(line: 710, column: 49, scope: !1271)
!1286 = !DILocation(line: 710, column: 33, scope: !1271)
!1287 = !DILocation(line: 711, column: 40, scope: !1271)
!1288 = !DILocation(line: 713, column: 26, scope: !1271)
!1289 = !DILocation(line: 717, column: 31, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 717, column: 30)
!1291 = !DILocation(line: 717, column: 43, scope: !1290)
!1292 = !DILocation(line: 717, column: 35, scope: !1290)
!1293 = !DILocation(line: 717, column: 48, scope: !1290)
!1294 = !DILocation(line: 717, column: 52, scope: !1290)
!1295 = !DILocation(line: 717, column: 66, scope: !1290)
!1296 = !DILocation(line: 717, column: 57, scope: !1290)
!1297 = !DILocation(line: 717, column: 55, scope: !1290)
!1298 = !DILocation(line: 717, column: 71, scope: !1290)
!1299 = !DILocation(line: 717, column: 78, scope: !1290)
!1300 = !DILocation(line: 718, column: 41, scope: !1290)
!1301 = !DILocation(line: 718, column: 32, scope: !1290)
!1302 = !DILocation(line: 718, column: 30, scope: !1290)
!1303 = !DILocation(line: 718, column: 46, scope: !1290)
!1304 = !DILocation(line: 718, column: 53, scope: !1290)
!1305 = !DILocation(line: 718, column: 67, scope: !1290)
!1306 = !DILocation(line: 718, column: 58, scope: !1290)
!1307 = !DILocation(line: 718, column: 56, scope: !1290)
!1308 = !DILocation(line: 718, column: 72, scope: !1290)
!1309 = !DILocation(line: 717, column: 30, scope: !1271)
!1310 = !DILocation(line: 723, column: 31, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 723, column: 30)
!1312 = !DILocation(line: 723, column: 30, scope: !1271)
!1313 = !DILocation(line: 726, column: 26, scope: !1271)
!1314 = !DILocation(line: 726, column: 31, scope: !1271)
!1315 = !DILocation(line: 726, column: 33, scope: !1271)
!1316 = !DILocation(line: 726, column: 41, scope: !1271)
!1317 = !DILocation(line: 728, column: 32, scope: !1271)
!1318 = !DILocation(line: 729, column: 26, scope: !1271)
!1319 = !DILocation(line: 733, column: 31, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 733, column: 30)
!1321 = !DILocation(line: 733, column: 43, scope: !1320)
!1322 = !DILocation(line: 733, column: 35, scope: !1320)
!1323 = !DILocation(line: 733, column: 48, scope: !1320)
!1324 = !DILocation(line: 733, column: 52, scope: !1320)
!1325 = !DILocation(line: 733, column: 66, scope: !1320)
!1326 = !DILocation(line: 733, column: 57, scope: !1320)
!1327 = !DILocation(line: 733, column: 55, scope: !1320)
!1328 = !DILocation(line: 733, column: 71, scope: !1320)
!1329 = !DILocation(line: 733, column: 78, scope: !1320)
!1330 = !DILocation(line: 734, column: 41, scope: !1320)
!1331 = !DILocation(line: 734, column: 32, scope: !1320)
!1332 = !DILocation(line: 734, column: 30, scope: !1320)
!1333 = !DILocation(line: 734, column: 46, scope: !1320)
!1334 = !DILocation(line: 734, column: 53, scope: !1320)
!1335 = !DILocation(line: 734, column: 67, scope: !1320)
!1336 = !DILocation(line: 734, column: 58, scope: !1320)
!1337 = !DILocation(line: 734, column: 56, scope: !1320)
!1338 = !DILocation(line: 734, column: 72, scope: !1320)
!1339 = !DILocation(line: 734, column: 79, scope: !1320)
!1340 = !DILocation(line: 735, column: 41, scope: !1320)
!1341 = !DILocation(line: 735, column: 32, scope: !1320)
!1342 = !DILocation(line: 735, column: 30, scope: !1320)
!1343 = !DILocation(line: 735, column: 46, scope: !1320)
!1344 = !DILocation(line: 733, column: 30, scope: !1271)
!1345 = !DILocation(line: 740, column: 31, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 740, column: 30)
!1347 = !DILocation(line: 740, column: 30, scope: !1271)
!1348 = !DILocation(line: 743, column: 32, scope: !1271)
!1349 = !DILocation(line: 744, column: 26, scope: !1271)
!1350 = !DILocation(line: 748, column: 31, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 748, column: 30)
!1352 = !DILocation(line: 748, column: 43, scope: !1351)
!1353 = !DILocation(line: 748, column: 35, scope: !1351)
!1354 = !DILocation(line: 748, column: 48, scope: !1351)
!1355 = !DILocation(line: 748, column: 52, scope: !1351)
!1356 = !DILocation(line: 748, column: 66, scope: !1351)
!1357 = !DILocation(line: 748, column: 57, scope: !1351)
!1358 = !DILocation(line: 748, column: 55, scope: !1351)
!1359 = !DILocation(line: 748, column: 71, scope: !1351)
!1360 = !DILocation(line: 748, column: 78, scope: !1351)
!1361 = !DILocation(line: 749, column: 41, scope: !1351)
!1362 = !DILocation(line: 749, column: 32, scope: !1351)
!1363 = !DILocation(line: 749, column: 30, scope: !1351)
!1364 = !DILocation(line: 749, column: 46, scope: !1351)
!1365 = !DILocation(line: 749, column: 53, scope: !1351)
!1366 = !DILocation(line: 749, column: 67, scope: !1351)
!1367 = !DILocation(line: 749, column: 58, scope: !1351)
!1368 = !DILocation(line: 749, column: 56, scope: !1351)
!1369 = !DILocation(line: 749, column: 72, scope: !1351)
!1370 = !DILocation(line: 748, column: 30, scope: !1271)
!1371 = !DILocation(line: 754, column: 31, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 754, column: 30)
!1373 = !DILocation(line: 754, column: 30, scope: !1271)
!1374 = !DILocation(line: 757, column: 32, scope: !1271)
!1375 = !DILocation(line: 758, column: 26, scope: !1271)
!1376 = !DILocation(line: 762, column: 30, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1271, file: !93, line: 762, column: 30)
!1378 = !DILocation(line: 762, column: 42, scope: !1377)
!1379 = !DILocation(line: 762, column: 45, scope: !1377)
!1380 = !DILocation(line: 762, column: 47, scope: !1377)
!1381 = !DILocation(line: 762, column: 30, scope: !1271)
!1382 = !DILocation(line: 764, column: 34, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !93, line: 764, column: 33)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !93, line: 763, column: 26)
!1385 = !DILocation(line: 764, column: 33, scope: !1384)
!1386 = !DILocation(line: 767, column: 40, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !93, line: 767, column: 33)
!1388 = !DILocation(line: 767, column: 34, scope: !1387)
!1389 = !DILocation(line: 767, column: 33, scope: !1384)
!1390 = !DILocation(line: 769, column: 39, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !93, line: 768, column: 29)
!1392 = !DILocation(line: 769, column: 51, scope: !1391)
!1393 = !DILocation(line: 769, column: 54, scope: !1391)
!1394 = !DILocation(line: 769, column: 56, scope: !1391)
!1395 = !DILocation(line: 769, column: 63, scope: !1391)
!1396 = !DILocation(line: 769, column: 66, scope: !1391)
!1397 = !DILocation(line: 769, column: 68, scope: !1391)
!1398 = !DILocation(line: 770, column: 42, scope: !1391)
!1399 = !DILocation(line: 770, column: 45, scope: !1391)
!1400 = !DILocation(line: 770, column: 47, scope: !1391)
!1401 = !DILocation(line: 770, column: 54, scope: !1391)
!1402 = !DILocation(line: 770, column: 57, scope: !1391)
!1403 = !DILocation(line: 770, column: 59, scope: !1391)
!1404 = !DILocation(line: 770, column: 66, scope: !1391)
!1405 = !DILocation(line: 770, column: 69, scope: !1391)
!1406 = !DILocation(line: 770, column: 71, scope: !1391)
!1407 = !DILocation(line: 769, column: 32, scope: !1391)
!1408 = !DILocation(line: 772, column: 50, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !93, line: 772, column: 40)
!1410 = distinct !DILexicalBlock(scope: !1391, file: !93, line: 771, column: 32)
!1411 = !DILocation(line: 772, column: 41, scope: !1409)
!1412 = !DILocation(line: 772, column: 58, scope: !1409)
!1413 = !DILocation(line: 772, column: 55, scope: !1409)
!1414 = !DILocation(line: 772, column: 40, scope: !1410)
!1415 = !DILocation(line: 774, column: 40, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1409, file: !93, line: 773, column: 35)
!1417 = !DILocation(line: 775, column: 38, scope: !1416)
!1418 = !DILocation(line: 778, column: 46, scope: !1410)
!1419 = !DILocation(line: 778, column: 39, scope: !1410)
!1420 = !DILocation(line: 778, column: 37, scope: !1410)
!1421 = distinct !{!1421, !1407, !1422, !297}
!1422 = !DILocation(line: 779, column: 32, scope: !1391)
!1423 = !DILocation(line: 781, column: 38, scope: !1391)
!1424 = !DILocation(line: 782, column: 32, scope: !1391)
!1425 = !DILocation(line: 785, column: 35, scope: !1384)
!1426 = !DILocation(line: 789, column: 40, scope: !1384)
!1427 = !DILocation(line: 790, column: 42, scope: !1384)
!1428 = !DILocation(line: 791, column: 35, scope: !1384)
!1429 = !DILocation(line: 793, column: 33, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1384, file: !93, line: 793, column: 33)
!1431 = !DILocation(line: 793, column: 35, scope: !1430)
!1432 = !DILocation(line: 793, column: 33, scope: !1384)
!1433 = !DILocation(line: 795, column: 38, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !93, line: 794, column: 29)
!1435 = !DILocation(line: 796, column: 32, scope: !1434)
!1436 = !DILocation(line: 799, column: 35, scope: !1384)
!1437 = !DILocation(line: 800, column: 29, scope: !1384)
!1438 = !DILocation(line: 803, column: 38, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1377, file: !93, line: 803, column: 26)
!1440 = !DILocation(line: 803, column: 88, scope: !1439)
!1441 = !DILocation(line: 803, column: 102, scope: !1439)
!1442 = !DILocation(line: 803, column: 29, scope: !1439)
!1443 = !DILocation(line: 804, column: 29, scope: !1439)
!1444 = !DILocation(line: 811, column: 22, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1203, file: !93, line: 810, column: 11)
!1446 = !DILocation(line: 811, column: 27, scope: !1445)
!1447 = !DILocation(line: 811, column: 14, scope: !1445)
!1448 = !DILocation(line: 815, column: 25, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !93, line: 812, column: 14)
!1450 = !DILocation(line: 815, column: 17, scope: !1449)
!1451 = !DILocation(line: 817, column: 20, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !93, line: 816, column: 17)
!1453 = !DILocation(line: 822, column: 27, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1452, file: !93, line: 822, column: 27)
!1455 = !DILocation(line: 822, column: 33, scope: !1454)
!1456 = !DILocation(line: 822, column: 27, scope: !1452)
!1457 = !DILocation(line: 823, column: 35, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !93, line: 823, column: 23)
!1459 = !DILocation(line: 823, column: 73, scope: !1458)
!1460 = !DILocation(line: 823, column: 26, scope: !1458)
!1461 = !DILocation(line: 824, column: 26, scope: !1458)
!1462 = !DILocation(line: 827, column: 29, scope: !1452)
!1463 = !DILocation(line: 829, column: 46, scope: !1452)
!1464 = !DILocation(line: 829, column: 51, scope: !1452)
!1465 = !DILocation(line: 829, column: 61, scope: !1452)
!1466 = !DILocation(line: 829, column: 30, scope: !1452)
!1467 = !DILocation(line: 830, column: 37, scope: !1452)
!1468 = !DILocation(line: 832, column: 23, scope: !1452)
!1469 = !DILocation(line: 836, column: 32, scope: !1452)
!1470 = !DILocation(line: 836, column: 38, scope: !1452)
!1471 = !DILocation(line: 836, column: 59, scope: !1452)
!1472 = !DILocation(line: 836, column: 29, scope: !1452)
!1473 = !DILocation(line: 837, column: 23, scope: !1452)
!1474 = !DILocation(line: 841, column: 27, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1452, file: !93, line: 841, column: 27)
!1476 = !DILocation(line: 841, column: 33, scope: !1475)
!1477 = !DILocation(line: 841, column: 27, scope: !1452)
!1478 = !DILocation(line: 843, column: 32, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !93, line: 842, column: 23)
!1480 = !DILocation(line: 844, column: 26, scope: !1479)
!1481 = !DILocation(line: 848, column: 32, scope: !1452)
!1482 = !DILocation(line: 848, column: 75, scope: !1452)
!1483 = !DILocation(line: 848, column: 89, scope: !1452)
!1484 = !DILocation(line: 848, column: 23, scope: !1452)
!1485 = !DILocation(line: 849, column: 23, scope: !1452)
!1486 = !DILocation(line: 857, column: 21, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1449, file: !93, line: 857, column: 21)
!1488 = !DILocation(line: 857, column: 21, scope: !1449)
!1489 = !DILocation(line: 859, column: 20, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !93, line: 858, column: 17)
!1491 = !DILocation(line: 861, column: 24, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1490, file: !93, line: 861, column: 24)
!1493 = !DILocation(line: 861, column: 29, scope: !1492)
!1494 = !DILocation(line: 861, column: 34, scope: !1492)
!1495 = !DILocation(line: 861, column: 50, scope: !1492)
!1496 = !DILocation(line: 861, column: 53, scope: !1492)
!1497 = !DILocation(line: 861, column: 59, scope: !1492)
!1498 = !DILocation(line: 861, column: 24, scope: !1490)
!1499 = !DILocation(line: 863, column: 30, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !93, line: 863, column: 27)
!1501 = distinct !DILexicalBlock(scope: !1492, file: !93, line: 862, column: 20)
!1502 = !DILocation(line: 863, column: 36, scope: !1500)
!1503 = !DILocation(line: 863, column: 27, scope: !1501)
!1504 = !DILocation(line: 865, column: 30, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !93, line: 865, column: 30)
!1506 = distinct !DILexicalBlock(scope: !1500, file: !93, line: 864, column: 23)
!1507 = !DILocation(line: 865, column: 36, scope: !1505)
!1508 = !DILocation(line: 865, column: 30, scope: !1506)
!1509 = !DILocation(line: 866, column: 38, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !93, line: 866, column: 26)
!1511 = !DILocation(line: 866, column: 82, scope: !1510)
!1512 = !DILocation(line: 866, column: 96, scope: !1510)
!1513 = !DILocation(line: 866, column: 29, scope: !1510)
!1514 = !DILocation(line: 867, column: 29, scope: !1510)
!1515 = !DILocation(line: 870, column: 30, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1506, file: !93, line: 870, column: 30)
!1517 = !DILocation(line: 870, column: 41, scope: !1516)
!1518 = !DILocation(line: 870, column: 46, scope: !1516)
!1519 = !DILocation(line: 870, column: 49, scope: !1516)
!1520 = !DILocation(line: 870, column: 51, scope: !1516)
!1521 = !DILocation(line: 870, column: 30, scope: !1506)
!1522 = !DILocation(line: 871, column: 35, scope: !1516)
!1523 = !DILocation(line: 871, column: 29, scope: !1516)
!1524 = !DILocation(line: 875, column: 32, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1500, file: !93, line: 874, column: 23)
!1526 = !DILocation(line: 876, column: 35, scope: !1525)
!1527 = !DILocation(line: 876, column: 41, scope: !1525)
!1528 = !DILocation(line: 876, column: 50, scope: !1525)
!1529 = !DILocation(line: 876, column: 52, scope: !1525)
!1530 = !DILocation(line: 876, column: 49, scope: !1525)
!1531 = !DILocation(line: 876, column: 47, scope: !1525)
!1532 = !DILocation(line: 876, column: 32, scope: !1525)
!1533 = !DILocation(line: 877, column: 26, scope: !1525)
!1534 = !DILocation(line: 880, column: 41, scope: !1501)
!1535 = !DILocation(line: 880, column: 46, scope: !1501)
!1536 = !DILocation(line: 880, column: 48, scope: !1501)
!1537 = !DILocation(line: 880, column: 56, scope: !1501)
!1538 = !DILocation(line: 880, column: 65, scope: !1501)
!1539 = !DILocation(line: 880, column: 67, scope: !1501)
!1540 = !DILocation(line: 880, column: 64, scope: !1501)
!1541 = !DILocation(line: 880, column: 62, scope: !1501)
!1542 = !DILocation(line: 880, column: 23, scope: !1501)
!1543 = !DILocation(line: 880, column: 28, scope: !1501)
!1544 = !DILocation(line: 880, column: 30, scope: !1501)
!1545 = !DILocation(line: 880, column: 38, scope: !1501)
!1546 = !DILocation(line: 881, column: 23, scope: !1501)
!1547 = !DILocation(line: 884, column: 36, scope: !1490)
!1548 = !DILocation(line: 884, column: 49, scope: !1490)
!1549 = !DILocation(line: 884, column: 58, scope: !1490)
!1550 = !DILocation(line: 884, column: 60, scope: !1490)
!1551 = !DILocation(line: 884, column: 57, scope: !1490)
!1552 = !DILocation(line: 884, column: 55, scope: !1490)
!1553 = !DILocation(line: 884, column: 33, scope: !1490)
!1554 = !DILocation(line: 885, column: 20, scope: !1490)
!1555 = !DILocation(line: 888, column: 21, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1449, file: !93, line: 888, column: 21)
!1557 = !DILocation(line: 888, column: 23, scope: !1556)
!1558 = !DILocation(line: 888, column: 30, scope: !1556)
!1559 = !DILocation(line: 888, column: 33, scope: !1556)
!1560 = !DILocation(line: 888, column: 35, scope: !1556)
!1561 = !DILocation(line: 888, column: 21, scope: !1449)
!1562 = !DILocation(line: 890, column: 26, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !93, line: 890, column: 25)
!1564 = distinct !DILexicalBlock(scope: !1556, file: !93, line: 889, column: 17)
!1565 = !DILocation(line: 890, column: 32, scope: !1563)
!1566 = !DILocation(line: 890, column: 46, scope: !1563)
!1567 = !DILocation(line: 890, column: 51, scope: !1563)
!1568 = !DILocation(line: 890, column: 57, scope: !1563)
!1569 = !DILocation(line: 890, column: 25, scope: !1564)
!1570 = !DILocation(line: 892, column: 29, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1563, file: !93, line: 891, column: 20)
!1572 = !DILocation(line: 894, column: 27, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1571, file: !93, line: 894, column: 27)
!1574 = !DILocation(line: 894, column: 29, scope: !1573)
!1575 = !DILocation(line: 894, column: 27, scope: !1571)
!1576 = !DILocation(line: 895, column: 32, scope: !1573)
!1577 = !DILocation(line: 895, column: 26, scope: !1573)
!1578 = !DILocation(line: 900, column: 26, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1556, file: !93, line: 900, column: 26)
!1580 = !DILocation(line: 900, column: 28, scope: !1579)
!1581 = !DILocation(line: 900, column: 35, scope: !1579)
!1582 = !DILocation(line: 900, column: 38, scope: !1579)
!1583 = !DILocation(line: 900, column: 43, scope: !1579)
!1584 = !DILocation(line: 900, column: 48, scope: !1579)
!1585 = !DILocation(line: 900, column: 26, scope: !1556)
!1586 = !DILocation(line: 902, column: 25, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !93, line: 902, column: 24)
!1588 = distinct !DILexicalBlock(scope: !1579, file: !93, line: 901, column: 17)
!1589 = !DILocation(line: 902, column: 24, scope: !1588)
!1590 = !DILocation(line: 903, column: 32, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !93, line: 903, column: 20)
!1592 = !DILocation(line: 903, column: 75, scope: !1591)
!1593 = !DILocation(line: 903, column: 23, scope: !1591)
!1594 = !DILocation(line: 904, column: 23, scope: !1591)
!1595 = !DILocation(line: 907, column: 20, scope: !1588)
!1596 = !DILocation(line: 907, column: 25, scope: !1588)
!1597 = !DILocation(line: 907, column: 30, scope: !1588)
!1598 = !DILocation(line: 908, column: 42, scope: !1588)
!1599 = !DILocation(line: 908, column: 47, scope: !1588)
!1600 = !DILocation(line: 908, column: 49, scope: !1588)
!1601 = !DILocation(line: 908, column: 33, scope: !1588)
!1602 = !DILocation(line: 908, column: 20, scope: !1588)
!1603 = !DILocation(line: 908, column: 25, scope: !1588)
!1604 = !DILocation(line: 908, column: 27, scope: !1588)
!1605 = !DILocation(line: 908, column: 31, scope: !1588)
!1606 = !DILocation(line: 910, column: 31, scope: !1588)
!1607 = !DILocation(line: 911, column: 20, scope: !1588)
!1608 = !DILocation(line: 914, column: 24, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1449, file: !93, line: 914, column: 21)
!1610 = !DILocation(line: 914, column: 30, scope: !1609)
!1611 = !DILocation(line: 914, column: 21, scope: !1449)
!1612 = !DILocation(line: 916, column: 24, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !93, line: 916, column: 24)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !93, line: 915, column: 17)
!1615 = !DILocation(line: 916, column: 29, scope: !1613)
!1616 = !DILocation(line: 916, column: 34, scope: !1613)
!1617 = !DILocation(line: 916, column: 24, scope: !1614)
!1618 = !DILocation(line: 918, column: 28, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !93, line: 918, column: 27)
!1620 = distinct !DILexicalBlock(scope: !1613, file: !93, line: 917, column: 20)
!1621 = !DILocation(line: 918, column: 27, scope: !1620)
!1622 = !DILocation(line: 919, column: 35, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !93, line: 919, column: 23)
!1624 = !DILocation(line: 919, column: 77, scope: !1623)
!1625 = !DILocation(line: 919, column: 26, scope: !1623)
!1626 = !DILocation(line: 920, column: 26, scope: !1623)
!1627 = !DILocation(line: 923, column: 47, scope: !1620)
!1628 = !DILocation(line: 923, column: 38, scope: !1620)
!1629 = !DILocation(line: 923, column: 84, scope: !1620)
!1630 = !DILocation(line: 923, column: 75, scope: !1620)
!1631 = !DILocation(line: 923, column: 64, scope: !1620)
!1632 = !DILocation(line: 923, column: 61, scope: !1620)
!1633 = !DILocation(line: 923, column: 23, scope: !1620)
!1634 = !DILocation(line: 923, column: 28, scope: !1620)
!1635 = !DILocation(line: 923, column: 30, scope: !1620)
!1636 = !DILocation(line: 923, column: 34, scope: !1620)
!1637 = !DILocation(line: 924, column: 20, scope: !1620)
!1638 = !DILocation(line: 926, column: 24, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1614, file: !93, line: 926, column: 24)
!1640 = !DILocation(line: 926, column: 26, scope: !1639)
!1641 = !DILocation(line: 926, column: 33, scope: !1639)
!1642 = !DILocation(line: 926, column: 36, scope: !1639)
!1643 = !DILocation(line: 926, column: 38, scope: !1639)
!1644 = !DILocation(line: 926, column: 24, scope: !1614)
!1645 = !DILocation(line: 928, column: 29, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1639, file: !93, line: 927, column: 20)
!1647 = !DILocation(line: 930, column: 27, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1646, file: !93, line: 930, column: 27)
!1649 = !DILocation(line: 930, column: 32, scope: !1648)
!1650 = !DILocation(line: 930, column: 37, scope: !1648)
!1651 = !DILocation(line: 930, column: 27, scope: !1646)
!1652 = !DILocation(line: 932, column: 26, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !93, line: 931, column: 23)
!1654 = !DILocation(line: 932, column: 31, scope: !1653)
!1655 = !DILocation(line: 932, column: 36, scope: !1653)
!1656 = !DILocation(line: 933, column: 48, scope: !1653)
!1657 = !DILocation(line: 933, column: 53, scope: !1653)
!1658 = !DILocation(line: 933, column: 55, scope: !1653)
!1659 = !DILocation(line: 933, column: 39, scope: !1653)
!1660 = !DILocation(line: 933, column: 26, scope: !1653)
!1661 = !DILocation(line: 933, column: 31, scope: !1653)
!1662 = !DILocation(line: 933, column: 33, scope: !1653)
!1663 = !DILocation(line: 933, column: 37, scope: !1653)
!1664 = !DILocation(line: 934, column: 23, scope: !1653)
!1665 = !DILocation(line: 936, column: 34, scope: !1646)
!1666 = !DILocation(line: 937, column: 29, scope: !1646)
!1667 = !DILocation(line: 939, column: 23, scope: !1646)
!1668 = !DILocation(line: 944, column: 25, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !93, line: 944, column: 24)
!1670 = distinct !DILexicalBlock(scope: !1609, file: !93, line: 943, column: 17)
!1671 = !DILocation(line: 944, column: 24, scope: !1670)
!1672 = !DILocation(line: 945, column: 32, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !93, line: 945, column: 20)
!1674 = !DILocation(line: 945, column: 74, scope: !1673)
!1675 = !DILocation(line: 945, column: 23, scope: !1673)
!1676 = !DILocation(line: 946, column: 23, scope: !1673)
!1677 = !DILocation(line: 950, column: 25, scope: !1670)
!1678 = !DILocation(line: 950, column: 31, scope: !1670)
!1679 = !DILocation(line: 949, column: 45, scope: !1670)
!1680 = !DILocation(line: 949, column: 34, scope: !1670)
!1681 = !DILocation(line: 949, column: 20, scope: !1670)
!1682 = !DILocation(line: 949, column: 25, scope: !1670)
!1683 = !DILocation(line: 949, column: 27, scope: !1670)
!1684 = !DILocation(line: 949, column: 31, scope: !1670)
!1685 = !DILocation(line: 953, column: 21, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1449, file: !93, line: 953, column: 21)
!1687 = !DILocation(line: 953, column: 27, scope: !1686)
!1688 = !DILocation(line: 953, column: 21, scope: !1449)
!1689 = !DILocation(line: 955, column: 24, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !93, line: 955, column: 24)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !93, line: 954, column: 17)
!1692 = !DILocation(line: 955, column: 29, scope: !1690)
!1693 = !DILocation(line: 955, column: 34, scope: !1690)
!1694 = !DILocation(line: 955, column: 24, scope: !1691)
!1695 = !DILocation(line: 956, column: 42, scope: !1690)
!1696 = !DILocation(line: 956, column: 47, scope: !1690)
!1697 = !DILocation(line: 956, column: 49, scope: !1690)
!1698 = !DILocation(line: 956, column: 40, scope: !1690)
!1699 = !DILocation(line: 956, column: 23, scope: !1690)
!1700 = !DILocation(line: 956, column: 28, scope: !1690)
!1701 = !DILocation(line: 956, column: 30, scope: !1690)
!1702 = !DILocation(line: 956, column: 38, scope: !1690)
!1703 = !DILocation(line: 958, column: 38, scope: !1690)
!1704 = !DILocation(line: 958, column: 43, scope: !1690)
!1705 = !DILocation(line: 958, column: 45, scope: !1690)
!1706 = !DILocation(line: 958, column: 36, scope: !1690)
!1707 = !DILocation(line: 958, column: 23, scope: !1690)
!1708 = !DILocation(line: 958, column: 28, scope: !1690)
!1709 = !DILocation(line: 958, column: 30, scope: !1690)
!1710 = !DILocation(line: 958, column: 34, scope: !1690)
!1711 = !DILocation(line: 961, column: 23, scope: !1449)
!1712 = !DILocation(line: 962, column: 17, scope: !1449)
!1713 = !DILocation(line: 969, column: 15, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !671, file: !93, line: 969, column: 15)
!1715 = !DILocation(line: 969, column: 21, scope: !1714)
!1716 = !DILocation(line: 969, column: 15, scope: !671)
!1717 = !DILocation(line: 971, column: 20, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !93, line: 970, column: 11)
!1719 = !DILocation(line: 972, column: 23, scope: !1718)
!1720 = !DILocation(line: 972, column: 14, scope: !1718)
!1721 = !DILocation(line: 973, column: 11, scope: !1718)
!1722 = !DILocation(line: 975, column: 15, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !671, file: !93, line: 975, column: 15)
!1724 = !DILocation(line: 975, column: 21, scope: !1723)
!1725 = !DILocation(line: 975, column: 15, scope: !671)
!1726 = !DILocation(line: 977, column: 23, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !93, line: 976, column: 11)
!1728 = !DILocation(line: 977, column: 29, scope: !1727)
!1729 = !DILocation(line: 977, column: 44, scope: !1727)
!1730 = !DILocation(line: 977, column: 20, scope: !1727)
!1731 = !DILocation(line: 979, column: 19, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1727, file: !93, line: 979, column: 18)
!1733 = !DILocation(line: 979, column: 24, scope: !1732)
!1734 = !DILocation(line: 979, column: 18, scope: !1727)
!1735 = !DILocation(line: 983, column: 23, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !93, line: 980, column: 14)
!1737 = !DILocation(line: 984, column: 17, scope: !1736)
!1738 = !DILocation(line: 987, column: 18, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1727, file: !93, line: 987, column: 18)
!1740 = !DILocation(line: 987, column: 23, scope: !1739)
!1741 = !DILocation(line: 987, column: 31, scope: !1739)
!1742 = !DILocation(line: 987, column: 36, scope: !1739)
!1743 = !DILocation(line: 987, column: 18, scope: !1727)
!1744 = !DILocation(line: 988, column: 23, scope: !1739)
!1745 = !DILocation(line: 988, column: 17, scope: !1739)
!1746 = !DILocation(line: 990, column: 25, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1727, file: !93, line: 990, column: 18)
!1748 = !DILocation(line: 990, column: 19, scope: !1747)
!1749 = !DILocation(line: 990, column: 18, scope: !1727)
!1750 = !DILocalVariable(name: "parent", scope: !1751, file: !93, line: 992, type: !41)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !93, line: 991, column: 14)
!1752 = !DILocation(line: 992, column: 30, scope: !1751)
!1753 = !DILocation(line: 992, column: 39, scope: !1751)
!1754 = !DILocation(line: 992, column: 44, scope: !1751)
!1755 = !DILocation(line: 994, column: 25, scope: !1751)
!1756 = !DILocation(line: 994, column: 33, scope: !1751)
!1757 = !DILocation(line: 994, column: 17, scope: !1751)
!1758 = !DILocation(line: 999, column: 60, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1751, file: !93, line: 995, column: 17)
!1760 = !DILocation(line: 998, column: 23, scope: !1759)
!1761 = !DILocation(line: 998, column: 31, scope: !1759)
!1762 = !DILocation(line: 998, column: 33, scope: !1759)
!1763 = !DILocation(line: 998, column: 40, scope: !1759)
!1764 = !DILocation(line: 999, column: 27, scope: !1759)
!1765 = !DILocation(line: 999, column: 35, scope: !1759)
!1766 = !DILocation(line: 999, column: 37, scope: !1759)
!1767 = !DILocation(line: 999, column: 44, scope: !1759)
!1768 = !DILocation(line: 999, column: 52, scope: !1759)
!1769 = !DILocation(line: 999, column: 58, scope: !1759)
!1770 = !DILocation(line: 1001, column: 23, scope: !1759)
!1771 = !DILocation(line: 1006, column: 56, scope: !1759)
!1772 = !DILocation(line: 1005, column: 23, scope: !1759)
!1773 = !DILocation(line: 1005, column: 31, scope: !1759)
!1774 = !DILocation(line: 1005, column: 33, scope: !1759)
!1775 = !DILocation(line: 1005, column: 39, scope: !1759)
!1776 = !DILocation(line: 1006, column: 30, scope: !1759)
!1777 = !DILocation(line: 1006, column: 38, scope: !1759)
!1778 = !DILocation(line: 1006, column: 40, scope: !1759)
!1779 = !DILocation(line: 1006, column: 46, scope: !1759)
!1780 = !DILocation(line: 1006, column: 54, scope: !1759)
!1781 = !DILocation(line: 1008, column: 23, scope: !1759)
!1782 = !DILocation(line: 1015, column: 23, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1727, file: !93, line: 1015, column: 19)
!1784 = !DILocation(line: 1015, column: 28, scope: !1783)
!1785 = !DILocation(line: 1015, column: 36, scope: !1783)
!1786 = !DILocation(line: 1015, column: 38, scope: !1783)
!1787 = !DILocation(line: 1015, column: 44, scope: !1783)
!1788 = !DILocation(line: 1015, column: 20, scope: !1783)
!1789 = !DILocation(line: 1015, column: 60, scope: !1783)
!1790 = !DILocation(line: 1015, column: 52, scope: !1783)
!1791 = !DILocation(line: 1015, column: 19, scope: !1727)
!1792 = !DILocation(line: 1018, column: 20, scope: !1727)
!1793 = !DILocation(line: 1018, column: 25, scope: !1727)
!1794 = !DILocation(line: 1018, column: 18, scope: !1727)
!1795 = !DILocation(line: 1020, column: 14, scope: !1727)
!1796 = !DILocation(line: 394, column: 42, scope: !672)
!1797 = !DILocation(line: 394, column: 33, scope: !672)
!1798 = !DILocation(line: 394, column: 8, scope: !672)
!1799 = distinct !{!1799, !1800, !1801}
!1800 = !DILocation(line: 394, column: 8, scope: !666)
!1801 = !DILocation(line: 1022, column: 8, scope: !666)
!1802 = !DILocation(line: 1024, column: 16, scope: !645)
!1803 = !DILocation(line: 1024, column: 14, scope: !645)
!1804 = !DILocation(line: 382, column: 64, scope: !641)
!1805 = !DILocation(line: 382, column: 55, scope: !641)
!1806 = !DILocation(line: 382, column: 5, scope: !641)
!1807 = distinct !{!1807, !643, !1808, !297}
!1808 = !DILocation(line: 1025, column: 5, scope: !637)
!1809 = !DILocation(line: 1027, column: 12, scope: !534)
!1810 = !DILocation(line: 1027, column: 5, scope: !534)
!1811 = !DILabel(scope: !534, name: "e_unknown_value", file: !93, line: 1029)
!1812 = !DILocation(line: 1029, column: 2, scope: !534)
!1813 = !DILocation(line: 1031, column: 14, scope: !534)
!1814 = !DILocation(line: 1031, column: 45, scope: !534)
!1815 = !DILocation(line: 1031, column: 5, scope: !534)
!1816 = !DILocation(line: 1032, column: 5, scope: !534)
!1817 = !DILabel(scope: !534, name: "e_alloc_failure", file: !93, line: 1034)
!1818 = !DILocation(line: 1034, column: 2, scope: !534)
!1819 = !DILocation(line: 1036, column: 13, scope: !534)
!1820 = !DILocation(line: 1036, column: 5, scope: !534)
!1821 = !DILocation(line: 1037, column: 5, scope: !534)
!1822 = !DILabel(scope: !534, name: "e_overflow", file: !93, line: 1039)
!1823 = !DILocation(line: 1039, column: 2, scope: !534)
!1824 = !DILocation(line: 1041, column: 14, scope: !534)
!1825 = !DILocation(line: 1041, column: 58, scope: !534)
!1826 = !DILocation(line: 1041, column: 5, scope: !534)
!1827 = !DILocation(line: 1042, column: 5, scope: !534)
!1828 = !DILabel(scope: !534, name: "e_failed", file: !93, line: 1044)
!1829 = !DILocation(line: 1044, column: 2, scope: !534)
!1830 = !DILocation(line: 1046, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !534, file: !93, line: 1046, column: 9)
!1832 = !DILocation(line: 1046, column: 9, scope: !534)
!1833 = !DILocation(line: 1048, column: 12, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !93, line: 1048, column: 12)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !93, line: 1047, column: 5)
!1836 = !DILocation(line: 1048, column: 12, scope: !1835)
!1837 = !DILocation(line: 1049, column: 19, scope: !1834)
!1838 = !DILocation(line: 1049, column: 30, scope: !1834)
!1839 = !DILocation(line: 1049, column: 11, scope: !1834)
!1840 = !DILocation(line: 1051, column: 19, scope: !1834)
!1841 = !DILocation(line: 1051, column: 11, scope: !1834)
!1842 = !DILocation(line: 1054, column: 15, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !534, file: !93, line: 1054, column: 9)
!1844 = !DILocation(line: 1054, column: 9, scope: !1843)
!1845 = !DILocation(line: 1054, column: 9, scope: !534)
!1846 = !DILocation(line: 1055, column: 16, scope: !1843)
!1847 = !DILocation(line: 1055, column: 14, scope: !1843)
!1848 = !DILocation(line: 1055, column: 8, scope: !1843)
!1849 = !DILocation(line: 1057, column: 5, scope: !534)
!1850 = !DILocation(line: 1057, column: 12, scope: !534)
!1851 = !DILocation(line: 1059, column: 14, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !534, file: !93, line: 1058, column: 5)
!1853 = !DILocation(line: 1059, column: 21, scope: !1852)
!1854 = !DILocation(line: 1059, column: 31, scope: !1852)
!1855 = !DILocation(line: 1059, column: 12, scope: !1852)
!1856 = !DILocation(line: 1060, column: 14, scope: !1852)
!1857 = !DILocation(line: 1060, column: 23, scope: !1852)
!1858 = !DILocation(line: 1060, column: 33, scope: !1852)
!1859 = !DILocation(line: 1060, column: 46, scope: !1852)
!1860 = !DILocation(line: 1060, column: 55, scope: !1852)
!1861 = !DILocation(line: 1060, column: 8, scope: !1852)
!1862 = !DILocation(line: 1061, column: 16, scope: !1852)
!1863 = !DILocation(line: 1061, column: 14, scope: !1852)
!1864 = distinct !{!1864, !1849, !1865, !297}
!1865 = !DILocation(line: 1062, column: 5, scope: !534)
!1866 = !DILocation(line: 1064, column: 16, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !534, file: !93, line: 1064, column: 9)
!1868 = !DILocation(line: 1064, column: 10, scope: !1867)
!1869 = !DILocation(line: 1064, column: 9, scope: !534)
!1870 = !DILocation(line: 1065, column: 35, scope: !1867)
!1871 = !DILocation(line: 1065, column: 45, scope: !1867)
!1872 = !DILocation(line: 1065, column: 8, scope: !1867)
!1873 = !DILocation(line: 1067, column: 5, scope: !534)
!1874 = !DILocation(line: 1068, column: 2, scope: !534)
!1875 = distinct !DISubprogram(name: "default_alloc", scope: !93, file: !93, line: 78, type: !401, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1876 = !DILocalVariable(name: "size", arg: 1, scope: !1875, file: !93, line: 78, type: !403)
!1877 = !DILocation(line: 78, column: 38, scope: !1875)
!1878 = !DILocalVariable(name: "zero", arg: 2, scope: !1875, file: !93, line: 78, type: !37)
!1879 = !DILocation(line: 78, column: 48, scope: !1875)
!1880 = !DILocalVariable(name: "user_data", arg: 3, scope: !1875, file: !93, line: 78, type: !88)
!1881 = !DILocation(line: 78, column: 61, scope: !1875)
!1882 = !DILocation(line: 80, column: 12, scope: !1875)
!1883 = !DILocation(line: 80, column: 30, scope: !1875)
!1884 = !DILocation(line: 80, column: 19, scope: !1875)
!1885 = !DILocation(line: 80, column: 46, scope: !1875)
!1886 = !DILocation(line: 80, column: 38, scope: !1875)
!1887 = !DILocation(line: 80, column: 5, scope: !1875)
!1888 = distinct !DISubprogram(name: "default_free", scope: !93, file: !93, line: 83, type: !407, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1889 = !DILocalVariable(name: "ptr", arg: 1, scope: !1888, file: !93, line: 83, type: !88)
!1890 = !DILocation(line: 83, column: 35, scope: !1888)
!1891 = !DILocalVariable(name: "user_data", arg: 2, scope: !1888, file: !93, line: 83, type: !88)
!1892 = !DILocation(line: 83, column: 47, scope: !1888)
!1893 = !DILocation(line: 85, column: 11, scope: !1888)
!1894 = !DILocation(line: 85, column: 5, scope: !1888)
!1895 = !DILocation(line: 86, column: 2, scope: !1888)
!1896 = distinct !DISubprogram(name: "hex_value", scope: !93, file: !93, line: 47, type: !1897, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!33, !34}
!1899 = !DILocalVariable(name: "c", arg: 1, scope: !1896, file: !93, line: 47, type: !34)
!1900 = !DILocation(line: 47, column: 44, scope: !1896)
!1901 = !DILocation(line: 49, column: 9, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1896, file: !93, line: 49, column: 9)
!1903 = !DILocation(line: 49, column: 9, scope: !1896)
!1904 = !DILocation(line: 50, column: 15, scope: !1902)
!1905 = !DILocation(line: 50, column: 17, scope: !1902)
!1906 = !DILocation(line: 50, column: 8, scope: !1902)
!1907 = !DILocation(line: 52, column: 13, scope: !1896)
!1908 = !DILocation(line: 52, column: 5, scope: !1896)
!1909 = !DILocation(line: 53, column: 28, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1896, file: !93, line: 52, column: 16)
!1911 = !DILocation(line: 54, column: 28, scope: !1910)
!1912 = !DILocation(line: 55, column: 28, scope: !1910)
!1913 = !DILocation(line: 56, column: 28, scope: !1910)
!1914 = !DILocation(line: 57, column: 28, scope: !1910)
!1915 = !DILocation(line: 58, column: 28, scope: !1910)
!1916 = !DILocation(line: 59, column: 17, scope: !1910)
!1917 = !DILocation(line: 61, column: 2, scope: !1896)
!1918 = distinct !DISubprogram(name: "new_value", scope: !93, file: !93, line: 102, type: !1919, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!37, !1921, !40, !40, !40, !48}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!1922 = !DILocalVariable(name: "state", arg: 1, scope: !1918, file: !93, line: 102, type: !1921)
!1923 = !DILocation(line: 102, column: 37, scope: !1918)
!1924 = !DILocalVariable(name: "top", arg: 2, scope: !1918, file: !93, line: 103, type: !40)
!1925 = !DILocation(line: 103, column: 38, scope: !1918)
!1926 = !DILocalVariable(name: "root", arg: 3, scope: !1918, file: !93, line: 103, type: !40)
!1927 = !DILocation(line: 103, column: 57, scope: !1918)
!1928 = !DILocalVariable(name: "alloc", arg: 4, scope: !1918, file: !93, line: 103, type: !40)
!1929 = !DILocation(line: 103, column: 77, scope: !1918)
!1930 = !DILocalVariable(name: "type", arg: 5, scope: !1918, file: !93, line: 104, type: !48)
!1931 = !DILocation(line: 104, column: 34, scope: !1918)
!1932 = !DILocalVariable(name: "value", scope: !1918, file: !93, line: 106, type: !41)
!1933 = !DILocation(line: 106, column: 18, scope: !1918)
!1934 = !DILocalVariable(name: "values_size", scope: !1918, file: !93, line: 107, type: !37)
!1935 = !DILocation(line: 107, column: 9, scope: !1918)
!1936 = !DILocation(line: 109, column: 10, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1918, file: !93, line: 109, column: 9)
!1938 = !DILocation(line: 109, column: 17, scope: !1937)
!1939 = !DILocation(line: 109, column: 9, scope: !1918)
!1940 = !DILocation(line: 111, column: 24, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !93, line: 110, column: 5)
!1942 = !DILocation(line: 111, column: 23, scope: !1941)
!1943 = !DILocation(line: 111, column: 17, scope: !1941)
!1944 = !DILocation(line: 111, column: 21, scope: !1941)
!1945 = !DILocation(line: 111, column: 14, scope: !1941)
!1946 = !DILocation(line: 112, column: 19, scope: !1941)
!1947 = !DILocation(line: 112, column: 18, scope: !1941)
!1948 = !DILocation(line: 112, column: 27, scope: !1941)
!1949 = !DILocation(line: 112, column: 37, scope: !1941)
!1950 = !DILocation(line: 112, column: 9, scope: !1941)
!1951 = !DILocation(line: 112, column: 15, scope: !1941)
!1952 = !DILocation(line: 114, column: 14, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1941, file: !93, line: 114, column: 12)
!1954 = !DILocation(line: 114, column: 13, scope: !1953)
!1955 = !DILocation(line: 114, column: 12, scope: !1941)
!1956 = !DILocation(line: 115, column: 19, scope: !1953)
!1957 = !DILocation(line: 115, column: 12, scope: !1953)
!1958 = !DILocation(line: 115, column: 17, scope: !1953)
!1959 = !DILocation(line: 115, column: 11, scope: !1953)
!1960 = !DILocation(line: 117, column: 16, scope: !1941)
!1961 = !DILocation(line: 117, column: 23, scope: !1941)
!1962 = !DILocation(line: 117, column: 8, scope: !1941)
!1963 = !DILocation(line: 121, column: 18, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !93, line: 121, column: 18)
!1965 = distinct !DILexicalBlock(scope: !1941, file: !93, line: 118, column: 8)
!1966 = !DILocation(line: 121, column: 25, scope: !1964)
!1967 = !DILocation(line: 121, column: 27, scope: !1964)
!1968 = !DILocation(line: 121, column: 33, scope: !1964)
!1969 = !DILocation(line: 121, column: 40, scope: !1964)
!1970 = !DILocation(line: 121, column: 18, scope: !1965)
!1971 = !DILocation(line: 137, column: 23, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1964, file: !93, line: 122, column: 14)
!1973 = !DILocation(line: 137, column: 22, scope: !1972)
!1974 = !DILocation(line: 137, column: 17, scope: !1972)
!1975 = !DILocation(line: 140, column: 17, scope: !1972)
!1976 = !DILocation(line: 144, column: 18, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1965, file: !93, line: 143, column: 18)
!1978 = !DILocation(line: 144, column: 25, scope: !1977)
!1979 = !DILocation(line: 144, column: 32, scope: !1977)
!1980 = !DILocation(line: 144, column: 34, scope: !1977)
!1981 = !DILocation(line: 144, column: 40, scope: !1977)
!1982 = !DILocation(line: 144, column: 47, scope: !1977)
!1983 = !DILocation(line: 143, column: 61, scope: !1977)
!1984 = !DILocation(line: 143, column: 45, scope: !1977)
!1985 = !DILocation(line: 143, column: 21, scope: !1977)
!1986 = !DILocation(line: 143, column: 28, scope: !1977)
!1987 = !DILocation(line: 143, column: 30, scope: !1977)
!1988 = !DILocation(line: 143, column: 36, scope: !1977)
!1989 = !DILocation(line: 143, column: 43, scope: !1977)
!1990 = !DILocation(line: 143, column: 18, scope: !1965)
!1991 = !DILocation(line: 146, column: 17, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1977, file: !93, line: 145, column: 14)
!1993 = !DILocation(line: 149, column: 14, scope: !1965)
!1994 = !DILocation(line: 149, column: 21, scope: !1965)
!1995 = !DILocation(line: 149, column: 23, scope: !1965)
!1996 = !DILocation(line: 149, column: 29, scope: !1965)
!1997 = !DILocation(line: 149, column: 36, scope: !1965)
!1998 = !DILocation(line: 150, column: 14, scope: !1965)
!1999 = !DILocation(line: 154, column: 18, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1965, file: !93, line: 154, column: 18)
!2001 = !DILocation(line: 154, column: 25, scope: !2000)
!2002 = !DILocation(line: 154, column: 27, scope: !2000)
!2003 = !DILocation(line: 154, column: 34, scope: !2000)
!2004 = !DILocation(line: 154, column: 41, scope: !2000)
!2005 = !DILocation(line: 154, column: 18, scope: !1965)
!2006 = !DILocation(line: 157, column: 63, scope: !1965)
!2007 = !DILocation(line: 157, column: 70, scope: !1965)
!2008 = !DILocation(line: 157, column: 72, scope: !1965)
!2009 = !DILocation(line: 157, column: 79, scope: !1965)
!2010 = !DILocation(line: 157, column: 61, scope: !1965)
!2011 = !DILocation(line: 157, column: 28, scope: !1965)
!2012 = !DILocation(line: 157, column: 26, scope: !1965)
!2013 = !DILocation(line: 160, column: 21, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1965, file: !93, line: 159, column: 18)
!2015 = !DILocation(line: 160, column: 28, scope: !2014)
!2016 = !DILocation(line: 160, column: 59, scope: !2014)
!2017 = !DILocation(line: 160, column: 66, scope: !2014)
!2018 = !DILocation(line: 160, column: 68, scope: !2014)
!2019 = !DILocation(line: 160, column: 75, scope: !2014)
!2020 = !DILocation(line: 160, column: 43, scope: !2014)
!2021 = !DILocation(line: 160, column: 40, scope: !2014)
!2022 = !DILocation(line: 159, column: 68, scope: !2014)
!2023 = !DILocation(line: 159, column: 46, scope: !2014)
!2024 = !DILocation(line: 159, column: 21, scope: !2014)
!2025 = !DILocation(line: 159, column: 28, scope: !2014)
!2026 = !DILocation(line: 159, column: 30, scope: !2014)
!2027 = !DILocation(line: 159, column: 37, scope: !2014)
!2028 = !DILocation(line: 159, column: 44, scope: !2014)
!2029 = !DILocation(line: 159, column: 18, scope: !1965)
!2030 = !DILocation(line: 162, column: 17, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2014, file: !93, line: 161, column: 14)
!2032 = !DILocation(line: 165, column: 57, scope: !1965)
!2033 = !DILocation(line: 165, column: 64, scope: !1965)
!2034 = !DILocation(line: 165, column: 66, scope: !1965)
!2035 = !DILocation(line: 165, column: 73, scope: !1965)
!2036 = !DILocation(line: 165, column: 45, scope: !1965)
!2037 = !DILocation(line: 165, column: 83, scope: !1965)
!2038 = !DILocation(line: 165, column: 81, scope: !1965)
!2039 = !DILocation(line: 165, column: 14, scope: !1965)
!2040 = !DILocation(line: 165, column: 21, scope: !1965)
!2041 = !DILocation(line: 165, column: 31, scope: !1965)
!2042 = !DILocation(line: 165, column: 42, scope: !1965)
!2043 = !DILocation(line: 167, column: 14, scope: !1965)
!2044 = !DILocation(line: 167, column: 21, scope: !1965)
!2045 = !DILocation(line: 167, column: 23, scope: !1965)
!2046 = !DILocation(line: 167, column: 30, scope: !1965)
!2047 = !DILocation(line: 167, column: 37, scope: !1965)
!2048 = !DILocation(line: 168, column: 14, scope: !1965)
!2049 = !DILocation(line: 173, column: 18, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1965, file: !93, line: 172, column: 18)
!2051 = !DILocation(line: 173, column: 26, scope: !2050)
!2052 = !DILocation(line: 173, column: 33, scope: !2050)
!2053 = !DILocation(line: 173, column: 35, scope: !2050)
!2054 = !DILocation(line: 173, column: 42, scope: !2050)
!2055 = !DILocation(line: 173, column: 49, scope: !2050)
!2056 = !DILocation(line: 173, column: 25, scope: !2050)
!2057 = !DILocation(line: 173, column: 54, scope: !2050)
!2058 = !DILocation(line: 172, column: 57, scope: !2050)
!2059 = !DILocation(line: 172, column: 21, scope: !2050)
!2060 = !DILocation(line: 172, column: 28, scope: !2050)
!2061 = !DILocation(line: 172, column: 30, scope: !2050)
!2062 = !DILocation(line: 172, column: 37, scope: !2050)
!2063 = !DILocation(line: 172, column: 41, scope: !2050)
!2064 = !DILocation(line: 172, column: 18, scope: !1965)
!2065 = !DILocation(line: 175, column: 17, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2050, file: !93, line: 174, column: 14)
!2067 = !DILocation(line: 178, column: 14, scope: !1965)
!2068 = !DILocation(line: 178, column: 21, scope: !1965)
!2069 = !DILocation(line: 178, column: 23, scope: !1965)
!2070 = !DILocation(line: 178, column: 30, scope: !1965)
!2071 = !DILocation(line: 178, column: 37, scope: !1965)
!2072 = !DILocation(line: 179, column: 14, scope: !1965)
!2073 = !DILocation(line: 185, column: 8, scope: !1941)
!2074 = !DILocation(line: 189, column: 12, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1918, file: !93, line: 188, column: 9)
!2076 = !DILocation(line: 189, column: 41, scope: !2075)
!2077 = !DILocation(line: 189, column: 48, scope: !2075)
!2078 = !DILocation(line: 189, column: 57, scope: !2075)
!2079 = !DILocation(line: 189, column: 39, scope: !2075)
!2080 = !DILocation(line: 188, column: 35, scope: !2075)
!2081 = !DILocation(line: 188, column: 20, scope: !2075)
!2082 = !DILocation(line: 188, column: 18, scope: !2075)
!2083 = !DILocation(line: 188, column: 9, scope: !1918)
!2084 = !DILocation(line: 191, column: 8, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2075, file: !93, line: 190, column: 5)
!2086 = !DILocation(line: 194, column: 11, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1918, file: !93, line: 194, column: 9)
!2088 = !DILocation(line: 194, column: 10, scope: !2087)
!2089 = !DILocation(line: 194, column: 9, scope: !1918)
!2090 = !DILocation(line: 195, column: 16, scope: !2087)
!2091 = !DILocation(line: 195, column: 9, scope: !2087)
!2092 = !DILocation(line: 195, column: 14, scope: !2087)
!2093 = !DILocation(line: 195, column: 8, scope: !2087)
!2094 = !DILocation(line: 197, column: 19, scope: !1918)
!2095 = !DILocation(line: 197, column: 5, scope: !1918)
!2096 = !DILocation(line: 197, column: 12, scope: !1918)
!2097 = !DILocation(line: 197, column: 17, scope: !1918)
!2098 = !DILocation(line: 198, column: 22, scope: !1918)
!2099 = !DILocation(line: 198, column: 21, scope: !1918)
!2100 = !DILocation(line: 198, column: 5, scope: !1918)
!2101 = !DILocation(line: 198, column: 12, scope: !1918)
!2102 = !DILocation(line: 198, column: 19, scope: !1918)
!2103 = !DILocation(line: 205, column: 10, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1918, file: !93, line: 205, column: 9)
!2105 = !DILocation(line: 205, column: 9, scope: !2104)
!2106 = !DILocation(line: 205, column: 9, scope: !1918)
!2107 = !DILocation(line: 206, column: 41, scope: !2104)
!2108 = !DILocation(line: 206, column: 10, scope: !2104)
!2109 = !DILocation(line: 206, column: 9, scope: !2104)
!2110 = !DILocation(line: 206, column: 18, scope: !2104)
!2111 = !DILocation(line: 206, column: 28, scope: !2104)
!2112 = !DILocation(line: 206, column: 39, scope: !2104)
!2113 = !DILocation(line: 206, column: 8, scope: !2104)
!2114 = !DILocation(line: 208, column: 21, scope: !1918)
!2115 = !DILocation(line: 208, column: 15, scope: !1918)
!2116 = !DILocation(line: 208, column: 19, scope: !1918)
!2117 = !DILocation(line: 208, column: 6, scope: !1918)
!2118 = !DILocation(line: 208, column: 12, scope: !1918)
!2119 = !DILocation(line: 210, column: 5, scope: !1918)
!2120 = !DILocation(line: 211, column: 2, scope: !1918)
!2121 = distinct !DISubprogram(name: "json_alloc", scope: !93, file: !93, line: 88, type: !2122, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!88, !1921, !89, !37}
!2124 = !DILocalVariable(name: "state", arg: 1, scope: !2121, file: !93, line: 88, type: !1921)
!2125 = !DILocation(line: 88, column: 41, scope: !2121)
!2126 = !DILocalVariable(name: "size", arg: 2, scope: !2121, file: !93, line: 88, type: !89)
!2127 = !DILocation(line: 88, column: 62, scope: !2121)
!2128 = !DILocalVariable(name: "zero", arg: 3, scope: !2121, file: !93, line: 88, type: !37)
!2129 = !DILocation(line: 88, column: 72, scope: !2121)
!2130 = !DILocation(line: 90, column: 10, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2121, file: !93, line: 90, column: 9)
!2132 = !DILocation(line: 90, column: 17, scope: !2131)
!2133 = !DILocation(line: 90, column: 29, scope: !2131)
!2134 = !DILocation(line: 90, column: 36, scope: !2131)
!2135 = !DILocation(line: 90, column: 27, scope: !2131)
!2136 = !DILocation(line: 90, column: 51, scope: !2131)
!2137 = !DILocation(line: 90, column: 49, scope: !2131)
!2138 = !DILocation(line: 90, column: 9, scope: !2121)
!2139 = !DILocation(line: 91, column: 8, scope: !2131)
!2140 = !DILocation(line: 93, column: 9, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2121, file: !93, line: 93, column: 9)
!2142 = !DILocation(line: 93, column: 16, scope: !2141)
!2143 = !DILocation(line: 93, column: 25, scope: !2141)
!2144 = !DILocation(line: 94, column: 11, scope: !2141)
!2145 = !DILocation(line: 94, column: 37, scope: !2141)
!2146 = !DILocation(line: 94, column: 15, scope: !2141)
!2147 = !DILocation(line: 94, column: 22, scope: !2141)
!2148 = !DILocation(line: 94, column: 34, scope: !2141)
!2149 = !DILocation(line: 94, column: 45, scope: !2141)
!2150 = !DILocation(line: 94, column: 52, scope: !2141)
!2151 = !DILocation(line: 94, column: 61, scope: !2141)
!2152 = !DILocation(line: 94, column: 43, scope: !2141)
!2153 = !DILocation(line: 93, column: 9, scope: !2121)
!2154 = !DILocation(line: 96, column: 8, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2141, file: !93, line: 95, column: 5)
!2156 = !DILocation(line: 99, column: 12, scope: !2121)
!2157 = !DILocation(line: 99, column: 19, scope: !2121)
!2158 = !DILocation(line: 99, column: 28, scope: !2121)
!2159 = !DILocation(line: 99, column: 39, scope: !2121)
!2160 = !DILocation(line: 99, column: 45, scope: !2121)
!2161 = !DILocation(line: 99, column: 51, scope: !2121)
!2162 = !DILocation(line: 99, column: 58, scope: !2121)
!2163 = !DILocation(line: 99, column: 67, scope: !2121)
!2164 = !DILocation(line: 99, column: 5, scope: !2121)
!2165 = !DILocation(line: 100, column: 2, scope: !2121)
!2166 = distinct !DISubprogram(name: "json_parse", scope: !93, file: !93, line: 1070, type: !2167, scopeLine: 1071, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !144)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!41, !537, !403}
!2169 = !DILocalVariable(name: "json", arg: 1, scope: !2166, file: !93, line: 1070, type: !537)
!2170 = !DILocation(line: 1070, column: 45, scope: !2166)
!2171 = !DILocalVariable(name: "length", arg: 2, scope: !2166, file: !93, line: 1070, type: !403)
!2172 = !DILocation(line: 1070, column: 58, scope: !2166)
!2173 = !DILocalVariable(name: "settings", scope: !2166, file: !93, line: 1072, type: !394)
!2174 = !DILocation(line: 1072, column: 19, scope: !2166)
!2175 = !DILocation(line: 1073, column: 38, scope: !2166)
!2176 = !DILocation(line: 1073, column: 44, scope: !2166)
!2177 = !DILocation(line: 1073, column: 12, scope: !2166)
!2178 = !DILocation(line: 1073, column: 5, scope: !2166)
!2179 = distinct !DISubprogram(name: "json_value_free", scope: !93, file: !93, line: 1076, type: !2180, scopeLine: 1077, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !144)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !41}
!2182 = !DILocalVariable(name: "value", arg: 1, scope: !2179, file: !93, line: 1076, type: !41)
!2183 = !DILocation(line: 1076, column: 37, scope: !2179)
!2184 = !DILocalVariable(name: "settings", scope: !2179, file: !93, line: 1078, type: !394)
!2185 = !DILocation(line: 1078, column: 19, scope: !2179)
!2186 = !DILocation(line: 1079, column: 14, scope: !2179)
!2187 = !DILocation(line: 1079, column: 23, scope: !2179)
!2188 = !DILocation(line: 1080, column: 36, scope: !2179)
!2189 = !DILocation(line: 1080, column: 5, scope: !2179)
!2190 = !DILocation(line: 1081, column: 2, scope: !2179)
!2191 = distinct !DISubprogram(name: "memcpy", scope: !2192, file: !2192, line: 12, type: !2193, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !144)
!2192 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/brooke/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!88, !88, !2195, !403}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2197 = !DILocalVariable(name: "destaddr", arg: 1, scope: !2191, file: !2192, line: 12, type: !88)
!2198 = !DILocation(line: 12, column: 20, scope: !2191)
!2199 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !2191, file: !2192, line: 12, type: !2195)
!2200 = !DILocation(line: 12, column: 42, scope: !2191)
!2201 = !DILocalVariable(name: "len", arg: 3, scope: !2191, file: !2192, line: 12, type: !403)
!2202 = !DILocation(line: 12, column: 58, scope: !2191)
!2203 = !DILocalVariable(name: "dest", scope: !2191, file: !2192, line: 13, type: !36)
!2204 = !DILocation(line: 13, column: 9, scope: !2191)
!2205 = !DILocation(line: 13, column: 16, scope: !2191)
!2206 = !DILocalVariable(name: "src", scope: !2191, file: !2192, line: 14, type: !537)
!2207 = !DILocation(line: 14, column: 15, scope: !2191)
!2208 = !DILocation(line: 14, column: 21, scope: !2191)
!2209 = !DILocation(line: 16, column: 3, scope: !2191)
!2210 = !DILocation(line: 16, column: 13, scope: !2191)
!2211 = !DILocation(line: 16, column: 16, scope: !2191)
!2212 = !DILocation(line: 17, column: 19, scope: !2191)
!2213 = !DILocation(line: 17, column: 15, scope: !2191)
!2214 = !DILocation(line: 17, column: 10, scope: !2191)
!2215 = !DILocation(line: 17, column: 13, scope: !2191)
!2216 = distinct !{!2216, !2209, !2212, !297}
!2217 = !DILocation(line: 18, column: 10, scope: !2191)
!2218 = !DILocation(line: 18, column: 3, scope: !2191)
!2219 = distinct !DISubprogram(name: "memset", scope: !2220, file: !2220, line: 12, type: !2221, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !130, retainedNodes: !144)
!2220 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/brooke/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!88, !88, !37, !403}
!2223 = !DILocalVariable(name: "dst", arg: 1, scope: !2219, file: !2220, line: 12, type: !88)
!2224 = !DILocation(line: 12, column: 20, scope: !2219)
!2225 = !DILocalVariable(name: "s", arg: 2, scope: !2219, file: !2220, line: 12, type: !37)
!2226 = !DILocation(line: 12, column: 29, scope: !2219)
!2227 = !DILocalVariable(name: "count", arg: 3, scope: !2219, file: !2220, line: 12, type: !403)
!2228 = !DILocation(line: 12, column: 39, scope: !2219)
!2229 = !DILocalVariable(name: "a", scope: !2219, file: !2220, line: 13, type: !36)
!2230 = !DILocation(line: 13, column: 9, scope: !2219)
!2231 = !DILocation(line: 13, column: 13, scope: !2219)
!2232 = !DILocation(line: 14, column: 3, scope: !2219)
!2233 = !DILocation(line: 14, column: 15, scope: !2219)
!2234 = !DILocation(line: 14, column: 18, scope: !2219)
!2235 = !DILocation(line: 15, column: 12, scope: !2219)
!2236 = !DILocation(line: 15, column: 7, scope: !2219)
!2237 = !DILocation(line: 15, column: 10, scope: !2219)
!2238 = distinct !{!2238, !2232, !2235, !297}
!2239 = !DILocation(line: 16, column: 10, scope: !2219)
!2240 = !DILocation(line: 16, column: 3, scope: !2219)
