; ModuleID = '/home/brooke/Code-Coverage-Tools-Benchmark/klee_build/signals_klee.bc'
source_filename = "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Divide by zero error. Program stopped.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"x is equal to y\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"x is less than y\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"x is greater than y\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"x is 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%d/%d = %d\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"/home/brooke/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.9 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.10 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @handle_signal(i32 noundef %0) #0 !dbg !12 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !18, metadata !DIExpression()), !dbg !19
  %3 = load i32, i32* %2, align 4, !dbg !20
  %4 = icmp eq i32 %3, 8, !dbg !22
  br i1 %4, label %5, label %7, !dbg !23

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)), !dbg !24
  call void @exit(i32 noundef 0) #6, !dbg !26
  unreachable, !dbg !26

7:                                                ; preds = %1
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @divideNumbers(i32 noundef %0, i32 noundef %1) #0 !dbg !28 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !33, metadata !DIExpression()), !dbg !34
  %6 = call void (i32)* @signal(i32 noundef 8, void (i32)* noundef @handle_signal) #7, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %5, metadata !36, metadata !DIExpression()), !dbg !37
  %7 = load i32, i32* %3, align 4, !dbg !38
  %8 = load i32, i32* %4, align 4, !dbg !39
  %int_cast_to_i64 = zext i32 %8 to i64, !dbg !40
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !40
  %9 = sdiv i32 %7, %8, !dbg !40, !klee.check.div !41
  store i32 %9, i32* %5, align 4, !dbg !37
  %10 = load i32, i32* %5, align 4, !dbg !42
  %11 = icmp eq i32 %10, 1, !dbg !44
  br i1 %11, label %12, label %14, !dbg !45

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  br label %26, !dbg !48

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4, !dbg !49
  %16 = icmp slt i32 %15, 0, !dbg !51
  br i1 %16, label %17, label %19, !dbg !52

17:                                               ; preds = %14
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)), !dbg !53
  br label %26, !dbg !55

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4, !dbg !56
  %21 = icmp sgt i32 %20, 0, !dbg !58
  br i1 %21, label %22, label %24, !dbg !59

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !60
  br label %26, !dbg !62

24:                                               ; preds = %19
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !63
  br label %26

26:                                               ; preds = %17, %24, %22, %12
  %27 = load i32, i32* %5, align 4, !dbg !65
  ret i32 %27, !dbg !66
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32 noundef, void (i32)* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 !dbg !67 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !73, metadata !DIExpression()), !dbg !74
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %6, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %7, metadata !79, metadata !DIExpression()), !dbg !80
  %9 = bitcast i32* %6 to i8*, !dbg !81
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !dbg !82
  %10 = bitcast i32* %7 to i8*, !dbg !83
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %8, metadata !85, metadata !DIExpression()), !dbg !86
  %11 = load i32, i32* %6, align 4, !dbg !87
  %12 = load i32, i32* %7, align 4, !dbg !88
  %13 = call i32 @divideNumbers(i32 noundef %11, i32 noundef %12), !dbg !89
  store i32 %13, i32* %8, align 4, !dbg !86
  %14 = load i32, i32* %6, align 4, !dbg !90
  %15 = load i32, i32* %7, align 4, !dbg !91
  %16 = load i32, i32* %8, align 4, !dbg !92
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 noundef %14, i32 noundef %15, i32 noundef %16), !dbg !93
  ret i32 0, !dbg !94
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #0 !dbg !95 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !100, metadata !DIExpression()), !dbg !101
  %3 = load i64, i64* %2, align 8, !dbg !102
  %4 = icmp eq i64 %3, 0, !dbg !104
  br i1 %4, label %5, label %6, !dbg !105

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.10, i64 0, i64 0)) #8, !dbg !106
  unreachable, !dbg !106

6:                                                ; preds = %1
  ret void, !dbg !107
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/signals.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "cac757cf5bfc2ef8a2dd4f11cc6bf55f")
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/brooke/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/brooke/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "handle_signal", scope: !13, file: !13, line: 9, type: !14, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!13 = !DIFile(filename: "klee_tests/signals.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "cac757cf5bfc2ef8a2dd4f11cc6bf55f")
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{}
!18 = !DILocalVariable(name: "signal", arg: 1, scope: !12, file: !13, line: 9, type: !16)
!19 = !DILocation(line: 9, column: 24, scope: !12)
!20 = !DILocation(line: 10, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !12, file: !13, line: 10, column: 9)
!22 = !DILocation(line: 10, column: 16, scope: !21)
!23 = !DILocation(line: 10, column: 9, scope: !12)
!24 = !DILocation(line: 11, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !13, line: 10, column: 27)
!26 = !DILocation(line: 12, column: 9, scope: !25)
!27 = !DILocation(line: 14, column: 1, scope: !12)
!28 = distinct !DISubprogram(name: "divideNumbers", scope: !13, file: !13, line: 16, type: !29, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!29 = !DISubroutineType(types: !30)
!30 = !{!16, !16, !16}
!31 = !DILocalVariable(name: "x", arg: 1, scope: !28, file: !13, line: 16, type: !16)
!32 = !DILocation(line: 16, column: 23, scope: !28)
!33 = !DILocalVariable(name: "y", arg: 2, scope: !28, file: !13, line: 16, type: !16)
!34 = !DILocation(line: 16, column: 30, scope: !28)
!35 = !DILocation(line: 17, column: 5, scope: !28)
!36 = !DILocalVariable(name: "div", scope: !28, file: !13, line: 19, type: !16)
!37 = !DILocation(line: 19, column: 9, scope: !28)
!38 = !DILocation(line: 19, column: 15, scope: !28)
!39 = !DILocation(line: 19, column: 17, scope: !28)
!40 = !DILocation(line: 19, column: 16, scope: !28)
!41 = !{!"True"}
!42 = !DILocation(line: 21, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !28, file: !13, line: 21, column: 9)
!44 = !DILocation(line: 21, column: 13, scope: !43)
!45 = !DILocation(line: 21, column: 9, scope: !28)
!46 = !DILocation(line: 22, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !13, line: 21, column: 19)
!48 = !DILocation(line: 23, column: 5, scope: !47)
!49 = !DILocation(line: 23, column: 16, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !13, line: 23, column: 16)
!51 = !DILocation(line: 23, column: 20, scope: !50)
!52 = !DILocation(line: 23, column: 16, scope: !43)
!53 = !DILocation(line: 24, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !13, line: 23, column: 25)
!55 = !DILocation(line: 25, column: 5, scope: !54)
!56 = !DILocation(line: 25, column: 16, scope: !57)
!57 = distinct !DILexicalBlock(scope: !50, file: !13, line: 25, column: 16)
!58 = !DILocation(line: 25, column: 20, scope: !57)
!59 = !DILocation(line: 25, column: 16, scope: !50)
!60 = !DILocation(line: 26, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !13, line: 25, column: 25)
!62 = !DILocation(line: 27, column: 5, scope: !61)
!63 = !DILocation(line: 28, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !57, file: !13, line: 27, column: 12)
!65 = !DILocation(line: 31, column: 12, scope: !28)
!66 = !DILocation(line: 31, column: 5, scope: !28)
!67 = distinct !DISubprogram(name: "main", scope: !13, file: !13, line: 34, type: !68, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!68 = !DISubroutineType(types: !69)
!69 = !{!16, !16, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DILocalVariable(name: "argc", arg: 1, scope: !67, file: !13, line: 34, type: !16)
!74 = !DILocation(line: 34, column: 14, scope: !67)
!75 = !DILocalVariable(name: "argv", arg: 2, scope: !67, file: !13, line: 34, type: !70)
!76 = !DILocation(line: 34, column: 27, scope: !67)
!77 = !DILocalVariable(name: "x", scope: !67, file: !13, line: 35, type: !16)
!78 = !DILocation(line: 35, column: 9, scope: !67)
!79 = !DILocalVariable(name: "y", scope: !67, file: !13, line: 35, type: !16)
!80 = !DILocation(line: 35, column: 12, scope: !67)
!81 = !DILocation(line: 38, column: 24, scope: !67)
!82 = !DILocation(line: 38, column: 5, scope: !67)
!83 = !DILocation(line: 39, column: 24, scope: !67)
!84 = !DILocation(line: 39, column: 5, scope: !67)
!85 = !DILocalVariable(name: "div", scope: !67, file: !13, line: 41, type: !16)
!86 = !DILocation(line: 41, column: 9, scope: !67)
!87 = !DILocation(line: 41, column: 29, scope: !67)
!88 = !DILocation(line: 41, column: 32, scope: !67)
!89 = !DILocation(line: 41, column: 15, scope: !67)
!90 = !DILocation(line: 42, column: 26, scope: !67)
!91 = !DILocation(line: 42, column: 29, scope: !67)
!92 = !DILocation(line: 42, column: 32, scope: !67)
!93 = !DILocation(line: 42, column: 5, scope: !67)
!94 = !DILocation(line: 44, column: 5, scope: !67)
!95 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !96, file: !96, line: 12, type: !97, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!96 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/brooke/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99}
!99 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!100 = !DILocalVariable(name: "z", arg: 1, scope: !95, file: !96, line: 12, type: !99)
!101 = !DILocation(line: 12, column: 36, scope: !95)
!102 = !DILocation(line: 13, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !95, file: !96, line: 13, column: 7)
!104 = !DILocation(line: 13, column: 9, scope: !103)
!105 = !DILocation(line: 13, column: 7, scope: !95)
!106 = !DILocation(line: 14, column: 5, scope: !103)
!107 = !DILocation(line: 15, column: 1, scope: !95)
