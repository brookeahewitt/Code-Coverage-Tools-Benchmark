; ModuleID = '/home/brooke/Code-Coverage-Tools-Benchmark/klee_build/malloc_klee.bc'
source_filename = "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Malloc was successful for x = %d\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Malloc was not successful for x = %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @malloc_mem(i32 noundef %0) #0 !dbg !14 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32** %4, metadata !21, metadata !DIExpression()), !dbg !22
  %5 = load i32, i32* %3, align 4, !dbg !23
  %6 = sext i32 %5 to i64, !dbg !23
  %7 = mul i64 %6, 4, !dbg !24
  %8 = call noalias i8* @malloc(i64 noundef %7) #4, !dbg !25
  %9 = bitcast i8* %8 to i32*, !dbg !26
  store i32* %9, i32** %4, align 8, !dbg !27
  %10 = load i32*, i32** %4, align 8, !dbg !28
  %11 = icmp eq i32* %10, null, !dbg !30
  br i1 %11, label %12, label %13, !dbg !31

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !32
  br label %16, !dbg !32

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8, !dbg !34
  %15 = bitcast i32* %14 to i8*, !dbg !34
  call void @free(i8* noundef %15) #4, !dbg !35
  store i32 1, i32* %2, align 4, !dbg !36
  br label %16, !dbg !36

16:                                               ; preds = %13, %12
  %17 = load i32, i32* %2, align 4, !dbg !37
  ret i32 %17, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 !dbg !38 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !44, metadata !DIExpression()), !dbg !45
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %6, metadata !48, metadata !DIExpression()), !dbg !49
  %8 = bitcast i32* %6 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %7, metadata !52, metadata !DIExpression()), !dbg !53
  %9 = load i32, i32* %6, align 4, !dbg !54
  %10 = call i32 @malloc_mem(i32 noundef %9), !dbg !55
  store i32 %10, i32* %7, align 4, !dbg !53
  %11 = load i32, i32* %7, align 4, !dbg !56
  %12 = icmp ne i32 %11, 0, !dbg !56
  br i1 %12, label %13, label %16, !dbg !58

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4, !dbg !59
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %14), !dbg !61
  br label %19, !dbg !62

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4, !dbg !63
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %17), !dbg !65
  br label %19

19:                                               ; preds = %16, %13
  ret i32 0, !dbg !66
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare i32 @printf(i8* noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/brooke/Code-Coverage-Tools-Benchmark/klee_tests/malloc.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "e45a56c7030a66cda8df25f87c5abdd2")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "malloc_mem", scope: !15, file: !15, line: 8, type: !16, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DIFile(filename: "klee_tests/malloc.c", directory: "/home/brooke/Code-Coverage-Tools-Benchmark", checksumkind: CSK_MD5, checksum: "e45a56c7030a66cda8df25f87c5abdd2")
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4}
!18 = !{}
!19 = !DILocalVariable(name: "numElements", arg: 1, scope: !14, file: !15, line: 8, type: !4)
!20 = !DILocation(line: 8, column: 20, scope: !14)
!21 = !DILocalVariable(name: "ptr", scope: !14, file: !15, line: 9, type: !3)
!22 = !DILocation(line: 9, column: 10, scope: !14)
!23 = !DILocation(line: 11, column: 24, scope: !14)
!24 = !DILocation(line: 11, column: 36, scope: !14)
!25 = !DILocation(line: 11, column: 17, scope: !14)
!26 = !DILocation(line: 11, column: 11, scope: !14)
!27 = !DILocation(line: 11, column: 9, scope: !14)
!28 = !DILocation(line: 13, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !14, file: !15, line: 13, column: 9)
!30 = !DILocation(line: 13, column: 13, scope: !29)
!31 = !DILocation(line: 13, column: 9, scope: !14)
!32 = !DILocation(line: 14, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !15, line: 13, column: 22)
!34 = !DILocation(line: 17, column: 10, scope: !14)
!35 = !DILocation(line: 17, column: 5, scope: !14)
!36 = !DILocation(line: 19, column: 5, scope: !14)
!37 = !DILocation(line: 20, column: 1, scope: !14)
!38 = distinct !DISubprogram(name: "main", scope: !15, file: !15, line: 22, type: !39, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!39 = !DISubroutineType(types: !40)
!40 = !{!4, !4, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DILocalVariable(name: "argc", arg: 1, scope: !38, file: !15, line: 22, type: !4)
!45 = !DILocation(line: 22, column: 14, scope: !38)
!46 = !DILocalVariable(name: "argv", arg: 2, scope: !38, file: !15, line: 22, type: !41)
!47 = !DILocation(line: 22, column: 27, scope: !38)
!48 = !DILocalVariable(name: "x", scope: !38, file: !15, line: 23, type: !4)
!49 = !DILocation(line: 23, column: 9, scope: !38)
!50 = !DILocation(line: 26, column: 24, scope: !38)
!51 = !DILocation(line: 26, column: 5, scope: !38)
!52 = !DILocalVariable(name: "malloc_success", scope: !38, file: !15, line: 28, type: !4)
!53 = !DILocation(line: 28, column: 9, scope: !38)
!54 = !DILocation(line: 28, column: 37, scope: !38)
!55 = !DILocation(line: 28, column: 26, scope: !38)
!56 = !DILocation(line: 29, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !38, file: !15, line: 29, column: 9)
!58 = !DILocation(line: 29, column: 9, scope: !38)
!59 = !DILocation(line: 30, column: 52, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !15, line: 29, column: 25)
!61 = !DILocation(line: 30, column: 9, scope: !60)
!62 = !DILocation(line: 31, column: 5, scope: !60)
!63 = !DILocation(line: 32, column: 56, scope: !64)
!64 = distinct !DILexicalBlock(scope: !57, file: !15, line: 31, column: 12)
!65 = !DILocation(line: 32, column: 9, scope: !64)
!66 = !DILocation(line: 34, column: 5, scope: !38)
