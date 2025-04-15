; ModuleID = '/home/brooke/Code-Coverage-Tools-Benchmark/klee_build/input_validation_klee.bc'
source_filename = "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/input_validation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.validate.arr = private unnamed_addr constant [8 x i32] [i32 10, i32 20, i32 30, i32 40, i32 50, i32 60, i32 70, i32 80], align 16
@.str = private unnamed_addr constant [14 x i8] c"arr[%d] = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Index %d out of bounds!\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"100 / %d = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Division by zero prevented.\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Negative input detected.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Special case that AFL/KLEE should find!\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"/home/brooke/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.9 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.10 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @validate(i32 noundef %0, i32 noundef %1) #0 !dbg !14 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [8 x i32]* %5, metadata !24, metadata !DIExpression()), !dbg !28
  %6 = bitcast [8 x i32]* %5 to i8*, !dbg !28
  %7 = call i8* @memcpy(i8* %6, i8* bitcast ([8 x i32]* @__const.validate.arr to i8*), i64 32), !dbg !28
  %8 = load i32, i32* %3, align 4, !dbg !29
  %9 = icmp sge i32 %8, 0, !dbg !31
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 8
  %or.cond = select i1 %9, i1 %11, i1 false, !dbg !32
  br i1 %or.cond, label %12, label %19, !dbg !32

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4, !dbg !33
  %14 = load i32, i32* %3, align 4, !dbg !35
  %15 = sext i32 %14 to i64, !dbg !36
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %15, !dbg !36
  %17 = load i32, i32* %16, align 4, !dbg !36
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %13, i32 noundef %17), !dbg !37
  br label %22, !dbg !38

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4, !dbg !39
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %20), !dbg !41
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32, i32* %4, align 4, !dbg !42
  %24 = icmp ne i32 %23, 0, !dbg !44
  br i1 %24, label %25, label %30, !dbg !45

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4, !dbg !46
  %27 = load i32, i32* %4, align 4, !dbg !48
  %int_cast_to_i64 = zext i32 %27 to i64, !dbg !49
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !49
  %28 = sdiv i32 100, %27, !dbg !49, !klee.check.div !50
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef %26, i32 noundef %28), !dbg !51
  br label %32, !dbg !52

30:                                               ; preds = %22
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)), !dbg !53
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, i32* %3, align 4, !dbg !55
  %34 = icmp slt i32 %33, 0, !dbg !57
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  %or.cond3 = select i1 %34, i1 true, i1 %36, !dbg !58
  br i1 %or.cond3, label %37, label %39, !dbg !58

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)), !dbg !59
  br label %39, !dbg !61

39:                                               ; preds = %32, %37
  %40 = load i32, i32* %3, align 4, !dbg !62
  %41 = icmp eq i32 %40, 6, !dbg !64
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 5
  %or.cond5 = select i1 %41, i1 %43, i1 false, !dbg !65
  br i1 %or.cond5, label %44, label %46, !dbg !65

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0)), !dbg !66
  br label %46, !dbg !68

46:                                               ; preds = %44, %39
  ret void, !dbg !69
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 !dbg !70 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !76, metadata !DIExpression()), !dbg !77
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %6, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %7, metadata !82, metadata !DIExpression()), !dbg !83
  %8 = bitcast i32* %6 to i8*, !dbg !84
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !85
  %9 = bitcast i32* %7 to i8*, !dbg !86
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)), !dbg !87
  %10 = load i32, i32* %6, align 4, !dbg !88
  %11 = load i32, i32* %7, align 4, !dbg !89
  call void @validate(i32 noundef %10, i32 noundef %11), !dbg !90
  ret i32 0, !dbg !91
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !92 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !102, metadata !DIExpression()), !dbg !103
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !104, metadata !DIExpression()), !dbg !105
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %7, metadata !108, metadata !DIExpression()), !dbg !109
  %9 = load i8*, i8** %4, align 8, !dbg !110
  store i8* %9, i8** %7, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata i8** %8, metadata !111, metadata !DIExpression()), !dbg !114
  %10 = load i8*, i8** %5, align 8, !dbg !115
  store i8* %10, i8** %8, align 8, !dbg !114
  br label %11, !dbg !116

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !117
  %13 = add i64 %12, -1, !dbg !117
  store i64 %13, i64* %6, align 8, !dbg !117
  %14 = icmp ugt i64 %12, 0, !dbg !118
  br i1 %14, label %15, label %21, !dbg !116

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !119
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !119
  store i8* %17, i8** %8, align 8, !dbg !119
  %18 = load i8, i8* %16, align 1, !dbg !120
  %19 = load i8*, i8** %7, align 8, !dbg !121
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !121
  store i8* %20, i8** %7, align 8, !dbg !121
  store i8 %18, i8* %19, align 1, !dbg !122
  br label %11, !dbg !116, !llvm.loop !123

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !125
  ret i8* %22, !dbg !126
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #0 !dbg !127 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !132, metadata !DIExpression()), !dbg !133
  %3 = load i64, i64* %2, align 8, !dbg !134
  %4 = icmp eq i64 %3, 0, !dbg !136
  br i1 %4, label %5, label %6, !dbg !137

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.10, i64 0, i64 0)) #5, !dbg !138
  unreachable, !dbg !138

6:                                                ; preds = %1
  ret void, !dbg !139
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/input_validation.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "b4a11565222d85620042c601bb24563d")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/brooke/klee/runtime/Freestanding/memcpy.c", directory: "/home/brooke/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = distinct !DICompileUnit(language: DW_LANG_C89, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/brooke/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/brooke/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "validate", scope: !15, file: !15, line: 8, type: !16, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!15 = !DIFile(filename: "klee_tests/input_validation.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "b4a11565222d85620042c601bb24563d")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "idx", arg: 1, scope: !14, file: !15, line: 8, type: !18)
!21 = !DILocation(line: 8, column: 19, scope: !14)
!22 = !DILocalVariable(name: "divisor", arg: 2, scope: !14, file: !15, line: 8, type: !18)
!23 = !DILocation(line: 8, column: 28, scope: !14)
!24 = !DILocalVariable(name: "arr", scope: !14, file: !15, line: 9, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 8)
!28 = !DILocation(line: 9, column: 9, scope: !14)
!29 = !DILocation(line: 11, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !14, file: !15, line: 11, column: 9)
!31 = !DILocation(line: 11, column: 13, scope: !30)
!32 = !DILocation(line: 11, column: 18, scope: !30)
!33 = !DILocation(line: 12, column: 34, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !15, line: 11, column: 36)
!35 = !DILocation(line: 12, column: 43, scope: !34)
!36 = !DILocation(line: 12, column: 39, scope: !34)
!37 = !DILocation(line: 12, column: 9, scope: !34)
!38 = !DILocation(line: 13, column: 5, scope: !34)
!39 = !DILocation(line: 14, column: 45, scope: !40)
!40 = distinct !DILexicalBlock(scope: !30, file: !15, line: 13, column: 12)
!41 = !DILocation(line: 14, column: 9, scope: !40)
!42 = !DILocation(line: 17, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !14, file: !15, line: 17, column: 9)
!44 = !DILocation(line: 17, column: 17, scope: !43)
!45 = !DILocation(line: 17, column: 9, scope: !14)
!46 = !DILocation(line: 18, column: 35, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !15, line: 17, column: 23)
!48 = !DILocation(line: 18, column: 50, scope: !47)
!49 = !DILocation(line: 18, column: 48, scope: !47)
!50 = !{!"True"}
!51 = !DILocation(line: 18, column: 9, scope: !47)
!52 = !DILocation(line: 19, column: 5, scope: !47)
!53 = !DILocation(line: 20, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !43, file: !15, line: 19, column: 12)
!55 = !DILocation(line: 23, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !14, file: !15, line: 23, column: 9)
!57 = !DILocation(line: 23, column: 13, scope: !56)
!58 = !DILocation(line: 23, column: 17, scope: !56)
!59 = !DILocation(line: 24, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !15, line: 23, column: 33)
!61 = !DILocation(line: 25, column: 5, scope: !60)
!62 = !DILocation(line: 27, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !14, file: !15, line: 27, column: 9)
!64 = !DILocation(line: 27, column: 13, scope: !63)
!65 = !DILocation(line: 27, column: 18, scope: !63)
!66 = !DILocation(line: 28, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !15, line: 27, column: 35)
!68 = !DILocation(line: 29, column: 5, scope: !67)
!69 = !DILocation(line: 30, column: 1, scope: !14)
!70 = distinct !DISubprogram(name: "main", scope: !15, file: !15, line: 32, type: !71, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!71 = !DISubroutineType(types: !72)
!72 = !{!18, !18, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DILocalVariable(name: "argc", arg: 1, scope: !70, file: !15, line: 32, type: !18)
!77 = !DILocation(line: 32, column: 14, scope: !70)
!78 = !DILocalVariable(name: "argv", arg: 2, scope: !70, file: !15, line: 32, type: !73)
!79 = !DILocation(line: 32, column: 27, scope: !70)
!80 = !DILocalVariable(name: "x", scope: !70, file: !15, line: 33, type: !18)
!81 = !DILocation(line: 33, column: 9, scope: !70)
!82 = !DILocalVariable(name: "y", scope: !70, file: !15, line: 33, type: !18)
!83 = !DILocation(line: 33, column: 12, scope: !70)
!84 = !DILocation(line: 36, column: 24, scope: !70)
!85 = !DILocation(line: 36, column: 5, scope: !70)
!86 = !DILocation(line: 37, column: 24, scope: !70)
!87 = !DILocation(line: 37, column: 5, scope: !70)
!88 = !DILocation(line: 39, column: 14, scope: !70)
!89 = !DILocation(line: 39, column: 17, scope: !70)
!90 = !DILocation(line: 39, column: 5, scope: !70)
!91 = !DILocation(line: 40, column: 5, scope: !70)
!92 = distinct !DISubprogram(name: "memcpy", scope: !93, file: !93, line: 12, type: !94, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!93 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/brooke/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !96, !97, !99}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 46, baseType: !101)
!100 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!101 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!102 = !DILocalVariable(name: "destaddr", arg: 1, scope: !92, file: !93, line: 12, type: !96)
!103 = !DILocation(line: 12, column: 20, scope: !92)
!104 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !92, file: !93, line: 12, type: !97)
!105 = !DILocation(line: 12, column: 42, scope: !92)
!106 = !DILocalVariable(name: "len", arg: 3, scope: !92, file: !93, line: 12, type: !99)
!107 = !DILocation(line: 12, column: 58, scope: !92)
!108 = !DILocalVariable(name: "dest", scope: !92, file: !93, line: 13, type: !74)
!109 = !DILocation(line: 13, column: 9, scope: !92)
!110 = !DILocation(line: 13, column: 16, scope: !92)
!111 = !DILocalVariable(name: "src", scope: !92, file: !93, line: 14, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!114 = !DILocation(line: 14, column: 15, scope: !92)
!115 = !DILocation(line: 14, column: 21, scope: !92)
!116 = !DILocation(line: 16, column: 3, scope: !92)
!117 = !DILocation(line: 16, column: 13, scope: !92)
!118 = !DILocation(line: 16, column: 16, scope: !92)
!119 = !DILocation(line: 17, column: 19, scope: !92)
!120 = !DILocation(line: 17, column: 15, scope: !92)
!121 = !DILocation(line: 17, column: 10, scope: !92)
!122 = !DILocation(line: 17, column: 13, scope: !92)
!123 = distinct !{!123, !116, !119, !124}
!124 = !{!"llvm.loop.mustprogress"}
!125 = !DILocation(line: 18, column: 10, scope: !92)
!126 = !DILocation(line: 18, column: 3, scope: !92)
!127 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !128, file: !128, line: 12, type: !129, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !19)
!128 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/brooke/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!129 = !DISubroutineType(types: !130)
!130 = !{null, !131}
!131 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!132 = !DILocalVariable(name: "z", arg: 1, scope: !127, file: !128, line: 12, type: !131)
!133 = !DILocation(line: 12, column: 36, scope: !127)
!134 = !DILocation(line: 13, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !127, file: !128, line: 13, column: 7)
!136 = !DILocation(line: 13, column: 9, scope: !135)
!137 = !DILocation(line: 13, column: 7, scope: !127)
!138 = !DILocation(line: 14, column: 5, scope: !135)
!139 = !DILocation(line: 15, column: 1, scope: !127)
