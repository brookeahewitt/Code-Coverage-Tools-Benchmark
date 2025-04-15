; ModuleID = '/home/brooke/Code-Coverage-Tools-Benchmark/klee_build/recursion_klee.bc'
source_filename = "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/recursion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Integer %d : Fibonacci %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fibonacci_sequence(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !16, metadata !DIExpression()), !dbg !17
  %4 = load i32, i32* %3, align 4, !dbg !18
  %5 = icmp sle i32 %4, 1, !dbg !20
  br i1 %5, label %6, label %8, !dbg !21

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !22
  store i32 %7, i32* %2, align 4, !dbg !24
  br label %16, !dbg !24

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !25
  %10 = sub nsw i32 %9, 1, !dbg !27
  %11 = call i32 @fibonacci_sequence(i32 noundef %10), !dbg !28
  %12 = load i32, i32* %3, align 4, !dbg !29
  %13 = sub nsw i32 %12, 2, !dbg !30
  %14 = call i32 @fibonacci_sequence(i32 noundef %13), !dbg !31
  %15 = add nsw i32 %11, %14, !dbg !32
  store i32 %15, i32* %2, align 4, !dbg !33
  br label %16, !dbg !33

16:                                               ; preds = %8, %6
  %17 = load i32, i32* %2, align 4, !dbg !34
  ret i32 %17, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 !dbg !35 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !41, metadata !DIExpression()), !dbg !42
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %6, metadata !45, metadata !DIExpression()), !dbg !46
  %7 = bitcast i32* %6 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !48
  %8 = load i32, i32* %6, align 4, !dbg !49
  %9 = icmp sge i32 %8, 0, !dbg !50
  %10 = zext i1 %9 to i32, !dbg !50
  %11 = sext i32 %10 to i64, !dbg !49
  call void @klee_assume(i64 noundef %11), !dbg !51
  %12 = load i32, i32* %6, align 4, !dbg !52
  %13 = load i32, i32* %6, align 4, !dbg !53
  %14 = call i32 @fibonacci_sequence(i32 noundef %13), !dbg !54
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12, i32 noundef %14), !dbg !55
  ret i32 0, !dbg !56
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/recursion.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "5a1aaec6f284b1e35434ff9c865da528")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "fibonacci_sequence", scope: !11, file: !11, line: 8, type: !12, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "klee_tests/recursion.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "5a1aaec6f284b1e35434ff9c865da528")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !11, line: 8, type: !14)
!17 = !DILocation(line: 8, column: 28, scope: !10)
!18 = !DILocation(line: 9, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !10, file: !11, line: 9, column: 9)
!20 = !DILocation(line: 9, column: 11, scope: !19)
!21 = !DILocation(line: 9, column: 9, scope: !10)
!22 = !DILocation(line: 10, column: 16, scope: !23)
!23 = distinct !DILexicalBlock(scope: !19, file: !11, line: 9, column: 17)
!24 = !DILocation(line: 10, column: 9, scope: !23)
!25 = !DILocation(line: 12, column: 35, scope: !26)
!26 = distinct !DILexicalBlock(scope: !19, file: !11, line: 11, column: 12)
!27 = !DILocation(line: 12, column: 37, scope: !26)
!28 = !DILocation(line: 12, column: 16, scope: !26)
!29 = !DILocation(line: 12, column: 63, scope: !26)
!30 = !DILocation(line: 12, column: 65, scope: !26)
!31 = !DILocation(line: 12, column: 44, scope: !26)
!32 = !DILocation(line: 12, column: 42, scope: !26)
!33 = !DILocation(line: 12, column: 9, scope: !26)
!34 = !DILocation(line: 14, column: 1, scope: !10)
!35 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 16, type: !36, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!36 = !DISubroutineType(types: !37)
!37 = !{!14, !14, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DILocalVariable(name: "argc", arg: 1, scope: !35, file: !11, line: 16, type: !14)
!42 = !DILocation(line: 16, column: 14, scope: !35)
!43 = !DILocalVariable(name: "argv", arg: 2, scope: !35, file: !11, line: 16, type: !38)
!44 = !DILocation(line: 16, column: 27, scope: !35)
!45 = !DILocalVariable(name: "x", scope: !35, file: !11, line: 17, type: !14)
!46 = !DILocation(line: 17, column: 9, scope: !35)
!47 = !DILocation(line: 20, column: 24, scope: !35)
!48 = !DILocation(line: 20, column: 5, scope: !35)
!49 = !DILocation(line: 21, column: 17, scope: !35)
!50 = !DILocation(line: 21, column: 19, scope: !35)
!51 = !DILocation(line: 21, column: 5, scope: !35)
!52 = !DILocation(line: 23, column: 43, scope: !35)
!53 = !DILocation(line: 23, column: 65, scope: !35)
!54 = !DILocation(line: 23, column: 46, scope: !35)
!55 = !DILocation(line: 23, column: 5, scope: !35)
!56 = !DILocation(line: 24, column: 5, scope: !35)
