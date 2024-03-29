//
//  SSV2HtmlView+Ranges.h
//  DTCoreTextLayout
//
//  Created by Su Jiang on 16/9/13.
//  Copyright © 2016年 sunima. All rights reserved.
//

#import "SSV2HtmlView.h"

/**
 The **Ranges** category enhances DTRichTextEditorView with methods for working with text ranges.
 */
@interface SSV2HtmlView (Ranges)


/**
 @name Working with Ranges
 */

/**
 Gets the text range of an URL at the given text position. Optionally also returns the hyperlink URL.
 @param position The text position
 @param URL An optional URL output param or `NULL` if the URL is not required
 @returns the text range or `NULL` if there is no URL at this position
 */
- (UITextRange *)textRangeOfURLAtPosition:(UITextPosition *)position URL:(NSURL **)URL;

/**
 Gets the range that encompasses the word at the given text position.
 @param position The text position
 @returns the text range
 */
- (UITextRange *)textRangeOfWordAtPosition:(UITextPosition *)position;

/**
 Extends the given range to include all full paragraphs that contain it.
 @param range The text range
 @returns The extended range
 */
- (UITextRange *)textRangeOfParagraphsContainingRange:(UITextRange *)range;

/**
 Finds the text range that includes the given cursor position.
 @param position The cursor position
 @return The paragraph range
 */
- (UITextRange *)textRangeOfParagraphContainingPosition:(UITextPosition *)position;

@end
