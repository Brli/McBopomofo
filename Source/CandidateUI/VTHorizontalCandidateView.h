//
// VTHorizontalCandidateView.h
//
// Copyright (c) 2012 Lukhnos D. Liu (http://lukhnos.org)
//
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following
// conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.
//

#import <Cocoa/Cocoa.h>

@interface VTHorizontalCandidateView : NSView
{
@protected
    NSArray *_keyLabels;
    NSArray *_displayedCandidates;
    CGFloat _keyLabelHeight;
    CGFloat _candidateTextHeight;
    CGFloat _cellPadding;
    NSDictionary *_keyLabelAttrDict;
    NSDictionary *_candidateAttrDict;
    NSDictionary *_CJKCandidateAttrDict;
    NSArray *_elementWidths;
    NSUInteger _highlightedIndex;
    NSUInteger _trackingHighlightedIndex;
    SEL _action;
    __weak id _target;
}

- (void)setKeyLabels:(NSArray *)labels displayedCandidates:(NSArray *)candidates;
- (void)setKeyLabelFont:(NSFont *)labelFont candidateFont:(NSFont *)candidateFont CJKCandidateFont:(NSFont *)candidateFontCJK;

@property (readonly, nonatomic) NSSize sizeForView;
@property (assign, nonatomic) NSUInteger highlightedIndex;
@property (assign, nonatomic) SEL action;
@property (weak, assign, nonatomic) id target;
@end